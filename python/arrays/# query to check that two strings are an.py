# query to check that two strings are anagram or not


def check_anagram(str1,str2):
    str1 = sorted(str1)
    str2 = sorted(str2)
    return str1 == str2

print(check_anagram("listen", "silent"))