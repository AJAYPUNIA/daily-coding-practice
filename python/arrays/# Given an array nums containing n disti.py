# Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.

 

# Example 1:

# Input: nums = [3,0,1]

# Output: 2

# Explanation:

# n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.


# solution

def missing_number(nums):
    num_set = set(nums)
    for number in range(len(nums)+ 1):
        if number not in num_set:
            return number
        

print(missing_number([3,0,1]))

