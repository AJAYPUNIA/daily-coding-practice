# Given an integer array nums and an integer k, return true if 
# there are two distinct indices i and j in 
# the array such that nums[i] == nums[j] and abs(i - j) <= k.

 

# Example 1:

# Input: nums = [1,2,3,1], k = 3
# Output: true


# solution


def containNearbyDuplicates(nums, k):
    seen = {}
    for i , x in enumerate(nums):
        if x in seen and i - seen[x] <=k:
            return True
        seen[x] = i
    return False 

print(containNearbyDuplicates([1,2,3,1], 3))
