# Write a function that checks if two strings are anagrams of each other.
# 	•	Ignore case and spaces.
# 	•	Example: "Listen" and "Silent" should return True.



def check_anagram(str1,str2):
    str1 = str1.replace(' ','').lower()
    str2 = str2.replace(' ','').lower()
    sorted_str1 = sorted(str1)
    sorted_str2 = sorted(str2)
    if sorted_str1 == sorted_str2:
        return True
    else:
        return False
    
print(check_anagram("Listen","Silent"))

