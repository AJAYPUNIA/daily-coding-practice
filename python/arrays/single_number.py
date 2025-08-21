# Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

# You must implement a solution with a linear runtime complexity and use only constant extra space.


def single_num(nums):
    store = {}
    for ch in nums:
        store[ch] = store.get(ch , 0) + 1
    for key , value in store.items():
        if value == 1:
            return key
        
print(single_num([2,2,1]))