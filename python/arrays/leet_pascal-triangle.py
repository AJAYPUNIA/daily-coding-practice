# Given an integer numRows, return the first numRows of Pascal's triangle.

# In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:


# Example 1:

# Input: numRows = 5
# Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
# Example 2:

# Input: numRows = 1
# Output: [[1]]


# solution

def generate_pascal(numRows):
    triangle = [[1]]
    for _ in range(1, numRows):
        prev_row = triangle[-1]
        new_row = [1]

        for i in range(1 , len(prev_row)):
            new_row.append(prev_row[i-1]+ prev_row[i])
        new_row.append(1)
        triangle.append(new_row)
    return triangle
        
print(generate_pascal(5))