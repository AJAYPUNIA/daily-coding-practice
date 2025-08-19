# Find the Missing Number in a Range

nums = [1, 2, 4, 5, 6]

def missing_number(nums):
    n = len(nums)+1
    total = n*(n+1)//2
    missing =   total - sum(nums)
    return missing

print(missing_number([1, 2, 4, 5, 6]))

