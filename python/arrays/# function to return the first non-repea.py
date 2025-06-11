# function to return the first non-repeating character in a string.

def non_rep(Input):
    for char in Input:
        if Input.count(char) == 1:
            return char
    return None

print(non_rep("aabbbcddudnwkadj"))

