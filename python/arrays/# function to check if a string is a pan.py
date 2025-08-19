# function to check if a string is a pangram.
import string
def check_pangram(sentence):
    cleaned = set(sentence.lower().replace(" ",""))
    alphabets = set(string.ascii_lowercase)
    return alphabets.issubset(cleaned)



#check
print(check_pangram("The quick brown fox jumps over the lazy dog"))
print(check_pangram("ajay is on rehab phase of life"))