# A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

# Given a string s, return true if it is a palindrome, or false otherwise.

 

# Example 1:

# Input: s = "A man, a plan, a canal: Panama"
# Output: true


def check_palindrome(s):
    cleaned_s = "".join(ch.lower() for ch in s if ch.isalnum())
    return cleaned_s == cleaned_s[::-1]


print(check_palindrome("A man, a plan, a canal: Panama"))