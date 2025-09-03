# Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.

# Each letter in magazine can only be used once in ransomNote.

 

# Example 1:

# Input: ransomNote = "a", magazine = "b"
# Output: false

from collections import Counter
def canConstruct(ransomNote , magazine):
    r_count = Counter(ransomNote)
    m_count = Counter(magazine)

    for ch in r_count:
        if r_count[ch] > m_count.get(ch, 0):
            return False
    return True
