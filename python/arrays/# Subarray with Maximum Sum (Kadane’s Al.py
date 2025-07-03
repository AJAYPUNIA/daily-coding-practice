# Subarray with Maximum Sum (Kadane’s Algorithm)

#Task:
# Given an array of integers (both positive and negative), 
# find the maximum sum of any contiguous subarray.

def maximum_sum(numbers):
    current_sum = max_sum = numbers[0]  # start with the first number
    
    for num in numbers[1:]:  # start from second number
        current_sum = max(num, current_sum + num)  # either start new or extend
        max_sum = max(max_sum, current_sum)  # update max sum if needed
        
    return max_sum

# Example
print(maximum_sum([-2, 1, -3, 4, -1, 2, 1, -5, 4]))  # Output: 6 (from subarray [4, -1, 2, 1])


