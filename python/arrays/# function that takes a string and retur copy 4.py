# function that takes a string and returns
# the first character that does not repeat anywhere in the string.
# If all characters repeat, return None.



def non_rep(sentence):
    sentence = sentence.lower()
    alphabets = sentence.replace(' ','')
    for char in alphabets:
        if alphabets.count(char) == 1:
            return char
    return None

print(non_rep("data science"))