# an array of integers nums, return an array output such that output[i] 
# is equal to the product of all the elements of nums 
# except nums


def product_except_self(nums):
    n = len(nums)
    # creating two arrays to hold the prefix and suffix products 
    prefix = [1] * n
    suffix = [1] * n
    output = [0] * n
# fill prefix
    for i in range(1 , n):
        prefix[i] = prefix[i-1]* nums[i-1]
# fill suffix arrayt
    for i in range(n -2 , -1, -1):
        suffix[i] = suffix[i+1] * nums[i+1]
        # final output = prefix[i] * suffix[i]

    for i in range(n):
        output[i] = prefix[i] * suffix[i]
    return output

print(product_except_self([1, 2, 3, 4]))
