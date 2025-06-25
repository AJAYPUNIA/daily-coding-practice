# Write a function that takes a list of words and 
# returns a dictionary that groups the words by their lengths.
# Words with the same length should go into the same list.

def group_words(words):
    result = {}
    for char in words:
        length = len(char)
        if length not in result:
            result[length] = []
        result[length].append(char)
    return result
print(group_words(["data", "is", "powerful", "and", "science"]))




