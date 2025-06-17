# Python function to check whether two strings are anagrams.

def check_anagram(str1,str2):
    sorted_str1 = sorted(str1)
    sorted_str2 = sorted(str2)
    if sorted_str1 == sorted_str2:
        return True
    else:
        return False
    
print(check_anagram("listen","silent"))
print(check_anagram("hello","world"))