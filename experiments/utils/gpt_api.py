import config
import openai
import os
import re
from time import sleep

from tenacity import (
    retry,
    stop_after_attempt,
    wait_random_exponential,
)

# Set OpenAPI key from environment or config file
api_key = os.environ.get("OPENAI_API_KEY")
if (api_key is None or api_key == "") and os.path.isfile(os.path.join(os.getcwd(), "keys.cfg")):
    cfg = config.Config('keys.cfg')
    api_key = cfg.get("OPENAI_API_KEY")
openai.api_key = api_key

# Define retry decorator to handle OpenAI API timeouts
@retry(wait=wait_random_exponential(min=20, max=100), stop=stop_after_attempt(6))
def completion_with_backoff(**kwargs):
    return openai.Completion.create(**kwargs)

# Define retry decorator to handle OpenAI API timeouts
@retry(wait=wait_random_exponential(min=1, max=60), stop=stop_after_attempt(6))
def chat_with_backoff(**kwargs):
    return openai.ChatCompletion.create(**kwargs)

# Define GPT-3 completion function
def CompletionGPT(phrase, model="text-davinci-003", num_samples=1):
    sleep(2)
    response = completion_with_backoff(
        model=model,
        prompt=phrase.strip(),
        temperature=0,
        top_p=1,
        max_tokens=512,
        n=num_samples
    )
    candidates = []
    for candidate in response.choices:
        z = candidate.text
        pred = re.sub("\n"," ", z)
        candidates.append(pred.strip())
    return candidates

# Define GPT-3.5+ chat function
def ChatGPT(messages, model="gpt-3.5-turbo", num_samples=1):
    response = chat_with_backoff(
        model=model,
        messages=messages,
        temperature=0,
        top_p=1,
        max_tokens=512,
        n=num_samples
    )
    candidates = []
    for candidate in response.choices:
        z = candidate.message.content
        pred = re.sub("\n"," ", z)
        candidates.append(pred.strip())
    return candidates
    
if __name__ == "__main__":
    pass