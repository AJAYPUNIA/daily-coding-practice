# windowfunction1


def maximum_sum_sub(nums, k):
    n = len(nums)
    if n < k:
        return None
    
    window_sum = sum(nums[:k])
    maximum_sum = window_sum

    for i in range(k,n):
        window_sum = window_sum - nums[i-k] + nums[i]
        maximum_sum = max( window_sum,maximum_sum)

    return maximum_sum

print(maximum_sum_sub([2, 1, 5, 1, 3, 2], 3))