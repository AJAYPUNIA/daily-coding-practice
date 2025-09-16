# Given a string s, return the number of segments in the string.

# A segment is defined to be a contiguous sequence of non-space characters.

 

# Example 1:

# Input: s = "Hello, my name is John"
# Output: 5
# Explanation: The five segments are ["Hello,", "my", "name", "is", "John"]

# solution

# option 1 automatic through split function
def countsegment(s):
    return s.split()

# option 2 manual count

def countsegmet(s):
    count = 0

    for i in range(len(s)):
        if (s[i] != 0 and (i == 0 or s[i- 1] == " ")):
            count += 1
        return count