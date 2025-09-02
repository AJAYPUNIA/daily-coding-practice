# Given a string s, reverse only all the vowels in the string and return it.

# The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.

 

# Example 1:

# Input: s = "IceCreAm"

# Output: "AceCreIm"

# Explanation:

# The vowels in s are ['I', 'e', 'e', 'A']. On reversing the vowels, s becomes "AceCreIm".


def reverse_vowles(s):
    vowels = set("aeiouAEIOU")
    left , right = 0 , len(s)-1
    s = list(s)
    while left < right:
        if s[left] not in vowels:
            left+=1
        elif s[right] not in vowels:
            right-=1
        else:
            s[left], s[right] = s[right], s[left]
    return "".join(s)


print(reverse_vowles("IceCreAm"))