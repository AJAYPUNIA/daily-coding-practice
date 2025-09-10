# Given a string s which consists of lowercase or uppercase letters, return the length of the longest palindrome that can be built with those letters.

# Letters are case sensitive, for example, "Aa" is not considered a palindrome.

 

# Example 1:

# Input: s = "abccccdd"
# Output: 7
# Explanation: One longest palindrome that can be built is "dccaccd", whose length is 7.



# solution

from collections import Counter
def longest_palindrome(s):
    cnt = Counter(s)
    length = 0
    odd_found = False


    for c in cnt.values():
        length += (c //2) * 2
        if c % 2 == 1:
            odd_found = True
    return length + 1 if odd_found else length