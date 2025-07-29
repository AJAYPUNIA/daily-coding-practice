# Write a Python function that checks whether a given word is a palindrome.

# A palindrome is a word that reads the same forward and backward.



def check_palindrome(words):
    if words == words[::-1]:
        return True
print(check_palindrome("level"))
