# Given an integer array nums, return true if any value appears 
# at least twice in the array, and return false if every element is distinct.


def contionsDupliactes(nums):
    store = {}
    for ch in nums:
        if ch in store:
            return True
        else:
            store[ch] = 1
    return False
print(contionsDupliactes( [1,2,3,1]))

