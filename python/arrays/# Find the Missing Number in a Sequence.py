# Find the Missing Number in a Sequence

# Write a function that takes a list of n-1 integers
# from the range 1 to n (inclusive), with one number missing,
# and returns the missing number.


def missing_number(numbers):
    sum = 0
    for num in numbers:
        sum += num
        n = len(numbers)+1
        original_sum = n*(n+1)//2
        result = (original_sum - sum)
    return result
print(missing_number([1, 2, 4, 5]))
