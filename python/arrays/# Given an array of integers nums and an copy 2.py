# Given an array of integers nums and an integer k,
# return the total number of subarrays whose sum equals k.

def subarray_to_sum(nums,k):
    count = 0
    prefix_sum = 0
    prefix_sums = {0:1}

    for num in nums:
        prefix_sum += num
        if (prefix_sum-k) in prefix_sums:
            count+= prefix_sums[prefix_sum-k]
        if prefix_sum in prefix_sums:
            prefix_sums[prefix_sum]+=1
        else:
            prefix_sums[prefix_sum]=1
    return count


print(subarray_to_sum([1, 2, 3], 3))

