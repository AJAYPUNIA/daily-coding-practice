# a function that takes a string and returns the 
# first character that does not repeat.
# If all characters repeat, return None.


def non_rep(words):
    for i in words:
        if words.count(i) ==1:
            return i 
    return None

print(non_rep("statistics"))
