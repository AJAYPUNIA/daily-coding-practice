# function that returns True if a string is a pangram.
import string
def check_pangram(sentence):
    alphabets = set(string.ascii_lowercase)
    cleaned = set(sentence.lower().replace(" ",""))
    return alphabets.issubset(cleaned)


print(check_pangram("The quick brown fox jumps over the lazy dog"))