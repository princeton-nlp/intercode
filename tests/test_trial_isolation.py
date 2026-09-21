"""Run Docker checks with INTERCODE_DOCKER_TESTS=1 and a built CTF image."""

import json
import os
from unittest.mock import MagicMock, patch
from uuid import uuid4

import pytest

from intercode.envs import BashEnv, CTFEnv


def test_independent_execution_and_grading_container_names():
    with patch("intercode.envs.ic_env.get_container", side_effect=lambda *a, **kw: MagicMock()) as agent, \
         patch("intercode.envs.bash.bash_env.get_container", side_effect=lambda *a, **kw: MagicMock()) as grader:
        a, b = BashEnv("intercode-bash"), BashEnv("intercode-bash")
    names = [call.args[0] for call in agent.call_args_list + grader.call_args_list]
    assert len(set(names)) == 4
    assert a.ctr_name_eval == a.container_name + "-eval"
    assert b.ctr_name_eval == b.container_name + "-eval"
    a.close()
    a.container.stop.assert_called_once()
    a.container_eval.stop.assert_called_once()
    b.container.stop.assert_not_called()
    b.container_eval.stop.assert_not_called()


@pytest.mark.skipif(os.getenv("INTERCODE_DOCKER_TESTS") != "1", reason="Docker opt-in")
def test_ctf_execution_reset_scoring_and_peer_files(tmp_path):
    image = os.getenv("INTERCODE_TEST_IMAGE", "intercode-ctf")
    data = tmp_path / "tasks.json"
    data.write_text(json.dumps([{"query": "Submit flag{ok}", "gold": "flag{ok}"}]))
    envs = []
    try:
        for _ in range(2):
            env = CTFEnv(image, data_path=str(data))
            envs.append(env)
            env.reset(0)
        a, b = envs
        assert a.container.id != b.container.id
        marker = uuid4().hex
        a.step(f"printf {marker} > /tmp/intercode-private-marker")
        assert a.step("cat /tmp/intercode-private-marker")[0] == marker
        assert b.step("test ! -e /tmp/intercode-private-marker")[3]["action_executed"]
        a_id = a.container.id
        a.reset(0)
        assert a.container.id == a_id  # Episodes retain their own environment.
        assert a.step("submit flag{wrong}")[1] == 0
        a.reset(0)
        assert a.step("submit flag{ok}")[1] == 1
        a.close()
        assert b.step("echo still-running")[0].strip() == "still-running"
        assert b.step("submit flag{ok}")[1] == 1
        # A subsequent environment must not adopt either old container.
        c = CTFEnv(image, data_path=str(data))
        envs.append(c)
        c.reset(0)
        assert c.container.id not in (a.container.id, b.container.id)
        assert c.step("test ! -e /tmp/intercode-private-marker")[3]["action_executed"]
    finally:
        for env in envs:
            env.container.remove(force=True)
