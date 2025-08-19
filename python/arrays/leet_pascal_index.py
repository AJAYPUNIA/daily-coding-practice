# Given an integer rowIndex, return the rowIndexth (0-indexed) row of the Pascal's triangle.

# Example 1:

# Input: rowIndex = 3
# Output: [1,3,3,1]
# Example 2:

# Input: rowIndex = 0
# Output: [1]



# solution


def get_row(rowindex):
    row = [1]
    for i in range( 1 , rowindex + 1):
        val = row[-1] *(rowindex - i + 1) // i
        row.append(val)
    return row
print(get_row(3))