#Python function to compute the standard deviation of a list of numbers.

import math 
def standard_deviation(nums):
    mean = sum(nums) / len(nums)
    new_numbers = []
    for i in nums:
        n = (mean - i) **2
        new_numbers.append(n)
    average = sum(new_numbers)/len(nums)
    st = math.sqrt(average)
    return st

print(standard_deviation([1,2,3,4,67,4,5,7]))