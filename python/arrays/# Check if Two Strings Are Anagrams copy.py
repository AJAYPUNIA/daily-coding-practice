# Check if Two Strings Are Anagrams

# Write a function that takes two strings and 
# returns True if they are anagrams 
# (i.e., they contain the same letters in a different order), 
# otherwise return False.


def check_anagrams(str1,str2):
    sorted_str1 = sorted(str1)
    sorted_str2 = sorted(str2)
    if sorted_str1 == sorted_str2:
        return True
    else:
        return False
    

print(check_anagrams("listen", "silent"))
print(check_anagrams("hello", "world"))