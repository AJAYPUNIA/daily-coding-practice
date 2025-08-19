# function that takes a string and 
# returns True if it is a palindrome, and False otherwise.


def check_pallindrome(word):
    if word == word[::-1]:
        return True
    else:
        return False
print(check_pallindrome("madam"))