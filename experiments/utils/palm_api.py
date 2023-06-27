from google.api_core import retry
import google.generativeai as palm
import os
import re
import config
import os
import tenacity
from time import sleep

# Set PaLM API key from environment or config file
api_key = os.environ.get("PALM_API_KEY")
if (api_key is None or api_key == "") and os.path.isfile(os.path.join(os.getcwd(), "keys.cfg")):
    cfg = config.Config('keys.cfg')
    api_key = cfg.get("PALM_API_KEY")
assert(api_key != None)
palm.configure(api_key=api_key)

@retry.Retry()
def retry_chat(**kwargs):
    return palm.chat(**kwargs)

@retry.Retry()
def retry_reply(x, arg):
    return x.reply(arg)

@tenacity.retry(wait=tenacity.wait_random_exponential(min=150, max=500), stop=tenacity.stop_after_attempt(6))
def generate_text(*args, **kwargs):
    return palm.generate_text(*args, **kwargs)

# PALM Chat 
class PalmChat:
    def __init__(self, model="models/chat-bison-001"):
        self.defaults = {
            'model': model,
            'temperature': 0,
            'top_p': 1,
            'candidate_count': 1
        }
        self.response = None

    def init_chat(self, context="You are a helpful assisstant", init_message="Hello"):
        # initialize chat
        response = None
        response = retry_chat(
        **self.defaults,
        context=context,
        messages=init_message
        )
        self.response = response
        
    def reply(self, reply):
        self.response = retry_reply(self.response, reply)
        while self.response.last == None:
            self.response = retry_reply(self.response, reply)

    def get_response(self):
        output = self.response.last
        # clean output
        output = re.sub("\n", " ", output)
        return output


def PalmCompletion(phrase, model="models/text-bison-001", num_samples=1):
    # Request configuration disabling all safety settings to prevent blocking
    config = {
        'model': model,
        'temperature': 0,
        'top_p': 1,
        'candidate_count': num_samples,
        'safety_settings': [{"category":"HARM_CATEGORY_DEROGATORY","threshold":4},{"category":"HARM_CATEGORY_TOXICITY","threshold":4},{"category":"HARM_CATEGORY_VIOLENCE","threshold":4},{"category":"HARM_CATEGORY_SEXUAL","threshold":4},{"category":"HARM_CATEGORY_MEDICAL","threshold":4},{"category":"HARM_CATEGORY_DANGEROUS","threshold":4}],
    }
    # to prevent rate limiting
    sleep(2)
    response = generate_text(
        **config,
        prompt=phrase
    )
    output = response.result
    # clean output
    if isinstance(output, str):
        output = re.sub("\n", " ", output)
    return output

if __name__ == "__main__":
    chat = PalmChat()
    chat.init_chat(init_message="I have 3 apples and 10 bananas. How many fruits do I have in total?")
    for i in range(5):
        print(chat.get_response())
        x = input("> ")
        chat.reply(x)
