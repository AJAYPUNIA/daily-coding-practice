# function that takes a sentence as input and 
# returns the first non-repeating character (ignoring spaces and case).
# If no such character exists, return None.

def non_rep(sentence):
    sentence = sentence.lower().replace(" ","")
    for char in sentence:
        if sentence.count(char) == 1:
            return char
    return None
print(non_rep("Data Science"))