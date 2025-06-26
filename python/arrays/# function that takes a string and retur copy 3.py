# function that takes a string and returns 
# the first character that does not repeat anywhere in the string.
# If all characters repeat, return None.


def non_rep(string):
    counts = {}
    for char in string:
        counts[char] = counts.get(char, 0)+1

    for char in counts:
        if counts[char] == 1:
            return char
    return None

print(non_rep("statistics"))

