# Given two strings s and t, determine if they are isomorphic.

# Two strings s and t are isomorphic if the characters in s can be replaced to get t.

# All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character, but a character may map to itself.

 

# Example 1:

# Input: s = "egg", t = "add"

# Output: true


# solution



def isIsomorphic(s,t):
    if len(s) != len(t):
        return False
    
    s2t = {}
    t2s = {}

    for a , b in zip(s,t):
        if a in s2t and s2t[a] != b:
            return False
        
        if b in t2s and t2s[b] != a:
            return False
        
        s2t[a] = b
        t2s[b] = a
    return True


print(isIsomorphic("egg", "add"))