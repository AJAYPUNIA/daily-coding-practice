# find the missing number in a list
# for example i am finding for 3
nums = [1, 2, 4, 5, 6]

def missing_number(nums):
    n = len(nums)+1
    total = n*(n+1)//2   # this is a math formula to find the sum of those numbers
    return total - sum(nums)
        

