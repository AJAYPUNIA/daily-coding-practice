# Given an array nums of size n, return the majority element.

# The majority element is the element that appears more than ⌊n / 2⌋ times.
# You may assume that the majority element always exists in the array.



def majority_num(nums):
    nums.sort()
    return nums[len(nums)//2]

print(majority_num([3,2,3]))