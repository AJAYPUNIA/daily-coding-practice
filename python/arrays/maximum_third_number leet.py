# Easy

# Topics
# premium lock icon
# Companies
# Given an integer array nums, return the third distinct maximum number in this array. If the third maximum does not exist, return the maximum number.

 

# Example 1:

# Input: nums = [3,2,1]
# Output: 1
# Explanation:
# The first distinct maximum is 3.
# # The second distinct maximum is 2.
# The third distinct maximum is 1.


def third_max(nums):
    nums = list(set(nums))
    nums.sort(revcerse = True)

    # applying condtion if the lenght of nums is greater then 3 or less then 3
    if len(nums) >= 3:
        return nums[2]
    else:
        return nums[0]