# function that takes a string and returns the first character that does not repeat anywhere in the string.
# If all characters repeat, return "None".


def non_repeative(sentence):
    sentence = sentence.lower()
    for char in sentence:
        if sentence.count(char) ==1:
            return char
    return None
print(non_repeative("Data Science"))