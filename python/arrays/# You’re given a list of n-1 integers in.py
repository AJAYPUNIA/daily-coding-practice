# You’re given a list of n-1 integers in the range 1 to n, with no duplicates.
# Write a Python function to find the missing number.

def find_missingNum(numbers):
    n = len(numbers)+1
    expected_sum = n*(n+1) //2
    actual_sum = sum(numbers)
    return expected_sum - actual_sum

print(find_missingNum([1, 2, 4, 5]))
