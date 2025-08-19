#  function that takes a string and returns the first non-repeating character.
# If there is no unique character, return "None".


def non_rep(sentence):
    for char in sentence:
        if sentence.count(char) == 1:
            return char
    return None

print(non_rep("aabbccddeeefg"))