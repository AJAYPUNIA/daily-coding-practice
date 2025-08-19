# Check if Two Strings are Anagrams

str1 = "listen"
str2 = "silent"


def check_anagram(str1, str2):
    sort_str1 = sorted(str1.lower())
    sort_str2 = sorted(str2.lower())
    if sort_str1 == sort_str2:
        print("it is a anagram")
    else:
        print("it is not a anagram")