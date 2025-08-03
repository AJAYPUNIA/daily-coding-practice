# Write a Python function that takes an integer and returns the integer with its digits reversed.

# Ignore leading zeros in the result.

def reverse_integers(nums):
    sign = -1 if nums < 0 else 1
    nums = abs(nums)
    reversed_number = int(str(nums)[::-1])
    return sign * reversed_number

print(reverse_integers(12345))