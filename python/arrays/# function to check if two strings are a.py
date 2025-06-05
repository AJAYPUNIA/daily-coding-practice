# function to check if two strings are anagrams of each other.


str1 = "listen"
str2 = "silent"

def check_anagram(str1,str2):
    str1 = sorted(str1)
    str2 = sorted(str2)
    if str1 == str2:
        print("yes these are anagram")
    else:
        print("No, this are not anagram")
print(check_anagram("silent","listen"))