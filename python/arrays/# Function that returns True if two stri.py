# Function that returns True if two strings are anagrams

def check_anagram(str1,str2):
    filter_1 = sorted(str1)
    filter_2 = sorted(str2)
    if filter_1 == filter_2:
        return True
    else:
        return False
    
print(check_anagram("listen", "silent"))