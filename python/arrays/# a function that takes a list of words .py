# a function that takes a list of words and returns 
# a dictionary where the keys are word lengths, and
# the values are lists of words with that length.
# group_words(["data", "is", "powerful", "and", "science"])

def group_words(sentence):
    group = {}
    for word in sentence:
        length = len(word)
        if length in group:
            group[length].append(word)
        else:
            group[length] = [word]
    return group 

print(group_words(["data", "is", "powerful", "and", "science"]))
