# function that takes a string and returns the first non-repeating character.

def non_rep(sentence):
    sentence = sentence.lower()
    for char in sentence:
        if sentence.count(char) == 1:
            return char
    return None

print(non_rep("Data Science"))
        
