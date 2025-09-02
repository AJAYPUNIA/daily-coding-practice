# Given an integer array nums, handle multiple queries of the following type:

# Calculate the sum of the elements of nums between indices left and right inclusive where left <= right.
# Implement the NumArray class:

# NumArray(int[] nums) Initializes the object with the integer array nums.
# int sumRange(int left, int right) Returns the sum of the elements of nums between indices left and right inclusive (i.e. nums[left] + nums[left + 1] + ... + nums[right]).



# soluton


def __init__(self, nums):
        self.pref = [0]
        running = 0
        for x in nums:
            running += x
            self.pref.append(running)
def sumRange(self, left: int, right: int) -> int:
        return self.pref[right + 1] - self.pref[left]


print(__init__([-2, 0, 3, -5, 2, -1], [0, 2], [2, 5], [0, 5]))