# Write a function that takes a string and returns the number of vowels
# (a, e, i, o, u) in it (both uppercase and lowercase should be counted).

import string
def count_vowles(s):
    s = s.lower()
    vowels = ["a", "e", "i", "o", "u"]
    count = 0
    for char in s:
        if char in vowels:
            count+=1
    return count 