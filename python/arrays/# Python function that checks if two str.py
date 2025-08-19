# Python function that checks if two strings are anagrams of each other.



def check_anagram(word_1, word_2):
    sorted_word_1 = sorted(word_1)
    sorted_word_2 = sorted(word_2)
    if sorted_word_1 == sorted_word_2:
        return True
    else:
        return False
    
print(check_anagram("listen","silent"))

    