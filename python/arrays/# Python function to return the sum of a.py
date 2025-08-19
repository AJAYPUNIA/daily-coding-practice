#  Python function to return the sum of all even numbers in a list.


def sum_evens(nums):
    evens = 0
    for num in nums:
        if num%2==0:
            evens+=num
    return evens
print(sum_evens([1, 2, 3, 4, 5, 6]))