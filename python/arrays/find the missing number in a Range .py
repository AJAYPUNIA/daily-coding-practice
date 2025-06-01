
# Find the Missing Number in a Range
nums = [1, 2, 4, 5, 6]

def missing_number(nums):
    n = len(nums)+1
    number = n*(n+1) //2
    return number - sum(nums)