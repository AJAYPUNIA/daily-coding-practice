# Python function that checks whether a string is a pangram.
# A pangram is a sentence that contains every letter of 
# the alphabet at least once.


import string
def check_pangram(sentence):
    sentence = sentence.lower()
    letter_in_sentence = set(sentence)
    alphabets = set(string.ascii_lowercase)
    if alphabets.issubset(letter_in_sentence):
        return True
    else:
        return None
    
print(check_pangram("The quick brown fox jumps over the lazy dog"))