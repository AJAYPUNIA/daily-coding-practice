# Given a list of integers and an integer k, 
# return the maximum sum of any contiguous subarray of length k.



def maximum_sub_sum(nums, k):
    n = len(nums)
    if n < k:
        return None  # not enough elements
    
    # calculate the sum of first window of size k
    window_sum = sum(nums[:k])
    maximum_sum = window_sum

    # sliding the window from  index to end
    for i in range(k,n):
        # subtracting the element which is leaving the window , add the one entering 
        window_sum = window_sum - nums[i-k] + nums[i]
        maximum_sum = max(window_sum, maximum_sum)
    return maximum_sum


print(maximum_sub_sum([2, 1, 5, 1, 3, 2], 3))

    