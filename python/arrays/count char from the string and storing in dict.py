# function that takes a string and returns a
# dictionary with the count of each character, 
# ignoring spaces and punctuation.


import string
def count_character(sentence):
    sentence = sentence.lower()
    for char in string.punctuation + " ":
       sentence = sentence.replace(char,"")

    char_count = {}
    for i in sentence:
            if i in char_count:
                char_count[i]+=1
            else:
                char_count[i] = 1
    return char_count
print(count_character("Data Science is Great!"))
