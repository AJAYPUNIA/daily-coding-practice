# given an integer columnNumber, return its corresponding column title as it appears in an Excel sheet.

# For example:

# A -> 1
# B -> 2
# C -> 3
# ...
# Z -> 26
# AA -> 27
# AB -> 28 
# ...


def conver_to_title(columnNumber):
    result = []
    while columnNumber > 0:
        columnNumber-= 1
        char = chr(columnNumber % 26 + ord('A'))
        result.append(char)
        columnNumber //=26
    return ''.join(reversed(result))

print(conver_to_title(1))