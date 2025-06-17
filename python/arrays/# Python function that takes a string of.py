# Python function that takes a string of text 
# and returns a dictionary containing each unique word 
# and its frequency (how many times it appears). 
# The count should be case-insensitive and ignore punctuation.


import string
def count_words(text):
    text = text.lower()
    for word in string.punctuation:
        text = text.replace(word,"")
    words = text.split()
    words_count = {}
    for i in words:
        if i in words_count:
            words_count[i] +=1
        else:
                words_count[i] = 1
    return words_count
text = "Hello, hello! How are you? Are you okay, YOU?"
print(count_words(text))