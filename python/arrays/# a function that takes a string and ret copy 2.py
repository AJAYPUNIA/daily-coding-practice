# a function that takes a string and returns True if it’s
# a palindrome (ignoring case and punctuation), and False otherwise.

import string
def check_pallindrome(sentence):
    sentence = sentence.lower()
    for punc in string.punctuation:
        sentence = sentence.replace(punc,"")
    sentence = sentence.replace(" ","")
    return  sentence == sentence[::-1]

print(check_pallindrome("A man, a plan, a canal: Panama")) 
