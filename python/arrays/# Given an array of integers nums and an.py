# Given an array of integers nums and an integer k,
# return the total number of continuous subarrays whose sum equals to k.


def maximum_sum_sub(nums,k):
    n = len(nums)
    if n < k:
        return None
    window_sum = sum(nums[:k])
    maximum_sum = window_sum

    for i in range(k,n):
        window_sum = window_sum - nums[i-k] +nums[i]
        maximum_sum = max(window_sum,maximum_sum)
    return maximum_sum

print(maximum_sum_sub([1,1,1],2))
