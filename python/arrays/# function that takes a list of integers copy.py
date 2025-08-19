# function that takes a list of integers and 
# returns the mean, median, and mode of the list.

from collections import Counter
def calculations(nums):
    mean = sum(nums)/len(nums)
    if len(nums) < 2:
        return None
    sorted_nums = sorted(nums)
    n = len(nums)
    if n%2 ==0:
        median = (sorted_nums[n//2-1] + sorted_nums[n//2]) /2
    else:
        median = sorted_nums[n//2]
    counts = Counter(nums)
    mode = max(counts, key = counts.get)
    return mean, median, mode


print(calculations([1,2,3,4,5,3]))
