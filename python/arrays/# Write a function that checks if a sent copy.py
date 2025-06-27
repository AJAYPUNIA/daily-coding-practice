# Write a function that checks if a sentence is a pangram.
# A pangram is a sentence that contains every
#  letter of the alphabet at least once.

import string
def check_pangram(sentence):
    sentence = sentence.lower()
    alphabets = set(string.ascii_lowercase)
    sentence_letters = set(sentence)
    if alphabets.issubset(sentence_letters):
        return True
    else:
        return False
    

print(check_pangram("The quick brown fox jumps over the lazy dog"  ))
