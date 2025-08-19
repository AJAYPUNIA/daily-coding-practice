# Given an integer array nums of length n and an integer target, find three integers in nums such that the sum is closest to target.

# Return the sum of the three integers.

# You may assume that each input would have exactly one solution.

 

# Example 1:

# Input: nums = [-1,2,1,-4], target = 1
# Output: 2
# Explanation: The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).


# solution

def threesumclosest(nums, target):
    nums.sort()
    closest_sum = float('inf')

    for i in range(len(nums)-2):
        left= i+1
        right = len(nums)-1
        while left < right:
            total = nums[i] + nums[left] + nums[right]
            if abs(target- total) < abs(target-closest_sum):
                closest_sum = total
            if total < target:
                left+=1
            elif total > target:
                right-=1
            else:
                return total
    return closest_sum

print(threesumclosest([-1,2,1,-4], 1))
