# Write a Python function that takes a list of numbers and returns the maximum number without 
# using the built-in max() function.
# Input: [10, 5, 20, 8]
# Output: 20


def maximum_number(nums):
    if not nums:
        return None
    max_num = nums[0]
    for num in nums:
        if num > max_num:
            max_num = num
    return max_num
print(maximum_number([10, 5, 20, 8]))



