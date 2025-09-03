# Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result must appear as many times as it shows in both arrays and you may return the result in any order.

 

# Example 1:

# Input: nums1 = [1,2,2,1], nums2 = [2,2]
# Output: [2,2]


from collections import Counter

def intersection(nums1, nums2):
    c1 = Counter(nums1)
    c2 = Counter(nums2)
    res = []

    for num in c1:
        if num in c2:
            res.extend([num] * min(c1[num] , c2[num]))
    return res


