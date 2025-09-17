# Given a string s, check if it can be constructed by taking a substring of it and appending multiple copies of the substring together.

 

# Example 1:

# Input: s = "abab"
# Output: true
# Explanation: It is the substring "ab" twice.


def repeatedsubstringpattern(s):
    n = len(s)
    for i in range(1, n//2 +1):
        if n % i == 0:
            if s[i] * (n // i) == s:
                return True