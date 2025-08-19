# Write a function that takes a string and 
# returns the count of vowels and consonants in it.
import string
def diff_char(input):
    c = set(string.ascii_lowercase)
    v = ["a","e","i","o","u"]
    counts = {"consonent":0,"vowels":0}
    input = input.lower()
    for i in input:
        if i in c:
            if i in v:
                counts['vowels']+=1
            else:
                counts["consonent"]+=1
    return counts


print(diff_char("Ajay Punia"))

        
