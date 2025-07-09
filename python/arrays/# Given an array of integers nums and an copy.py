# Given an array of integers nums and an integer k, return 
# the total number of continuous subarrays whose sum equals to k.


def count_subarrays(nums,k):
    count = 0
    prefix_sum = 0
    prefix_counts = {0:1}

    for num in nums:
        prefix_sum +=num

        if (prefix_sum-k) in prefix_counts:
            count += prefix_counts[prefix_sum-k]

        prefix_counts[prefix_sum] = prefix_counts.get(prefix_sum, 0) + 1
    return count
print(count_subarrays([1, 2, 3], 3))

