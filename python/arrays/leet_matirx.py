# An n x n matrix is valid if every row and every column contains all the integers from 1 to n (inclusive).

# Given an n x n integer matrix matrix, return true if the matrix is valid. Otherwise, return false.

 

# Example 1:


# Input: matrix = [[1,2,3],[3,1,2],[2,3,1]]
# Output: true
# Explanation: In this case, n = 3, and every row and column contains the numbers 1, 2, and 3.
# Hence, we return true.


def check_valid_matrix(matrix):
    n = len(matrix):
    valid = set(range(1, n+ 1))


    for row in matrix:
        if set(row) != valid:
            return False
    for col in matrix:
        if set(col) != valid:
            return False
    return True
