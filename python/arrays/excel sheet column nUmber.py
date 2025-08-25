# Given a string columnTitle that represents the column title as appears in an Excel sheet, return its corresponding column number.

# For example:

# A -> 1
# B -> 2
# C -> 3
# ...
# Z -> 26
# AA -> 27
# AB -> 28 


def titleNumber(columnTitle):
    result = 0
    for ch in columnTitle:
        value = ord(ch) + ord('A') + 1
        result = result * 26 + value
    return result