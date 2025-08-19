# Given a string s consisting of words and spaces, return the length of the last word in the string.

# A word is a maximal substring consisting of non-space characters only.

 

# Example 1:

# Input: s = "Hello World"
# Output: 5
# Explanation: The last word is "World" with length 5.



def last_str_len(s):
    seprated_s = s.split()
    return len(seprated_s[-1])

print(last_str_len("   fly me   to   the moon  "))