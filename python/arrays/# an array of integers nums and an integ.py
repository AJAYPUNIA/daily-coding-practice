#  an array of integers nums and an integer k, return 
# the length of the longest subarray 
# that sums to exactly k.


def longest_subarray_with_sum_k(nums,k):
    prefix_sum = 0
    max_length = 0
    seen = {}
    for i in range(len(nums)):
        prefix_sum += nums[i]
        # if the sum upto index i is equal to k
        if prefix_sum == k:
            max_length = i+1
        # if prefix_sum - k was seen before , subarray from that index+1 to i adds upto k
        if (prefix_sum -k) in seen:
            max_length = max(max_length, i-seen[prefix_sum -k])
        # only store the first occurence of this preffix_sum 
        if prefix_sum not in seen:
            seen[prefix_sum] = i 
    return max_length


print(longest_subarray_with_sum_k([1, 2, 3, 1, 1, 1, 4, 2], 6))
    
