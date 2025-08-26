# Given two strings s and t, return true if t is an anagram of s, and false otherwise.

 

# Example 1:

# Input: s = "anagram", t = "nagaram"

# Output: true


def checkAnagram(s, t):
    s = sorted(s)
    t = sorted(t)
    if s == t:
        return True
    else:
        return False
    
print(checkAnagram("anagram", "nagaram"))