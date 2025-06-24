# Write a function that checks whether two 
# strings are anagrams of each other.

# Definition:
# Two strings are anagrams if they contain 
# the same characters in the same frequency, 
# but possibly in a different order.

def check_anagram(str_1 , str_2):
    sorted_str_1 = sorted(str_1)
    sorted_str_2 = sorted(str_2)
    if sorted_str_1 == sorted_str_2:
        return True
    return False

print(check_anagram( "listen", "silent"  ))

