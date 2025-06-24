# Write a Python function that takes a list of integers 
# and returns the maximum difference between any two numbers in the list.


def maximum_difference(numbers):
    return max(numbers) - min(numbers)

print(maximum_difference([2, 7, 3, 1, 9]))