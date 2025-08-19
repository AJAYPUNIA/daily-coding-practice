#  a list of integers and an integer k, return the length of the 
# longest subarray that sums to k.


def longest_subarray_with_sum_k(nums,k):
    preffix_sum = 0
    max_length = 0
    seen = {}
    for i in range(len(nums)):
        preffix_sum += nums[i]

        if preffix_sum == k:
            max_length = i+1

        if (preffix_sum - k) in seen:
            max_length = max(max_length, i - seen[preffix_sum-k])

        if preffix_sum not in seen:
            seen[preffix_sum] = i
    return max_length


print(longest_subarray_with_sum_k([1,2,3,1,2,2,3,4,2,1,1,1,],7))
