#checking angram 
str1 = "listen"
str2 = "silent"

def anagram_check(str1,str2):
    sorted_str1 = sorted(str1.lower().replace(" ",""))
    sorted_str2 = sorted(str2.lower().replace(" ",""))
    if sorted_str1 == sorted_str2:
        print("yes this is a anagram")
    else:
        print("this is not a anagram")

   