# function that checks if a given string is a palindrome 
# (reads the same forward and backward), ignoring spaces, 
# punctuation, and case.
# Input: "A man, a plan, a canal: Panama"

import string
def check_palindrome(sentence):
    sentence = sentence.lower()
    for punc in string.punctuation + ' ':
        sentence = sentence.replace(punc,'')
    return sentence == sentence[::-1]
    

print(check_palindrome("A man, a plan ,a canal: Panama"))