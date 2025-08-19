# function to remove duplicates from a list while preserving the original order.


def remove_duplicates(nums):
    seen  = []
    for num in nums:
        if num not in seen:
            seen.append(num)
    return seen

nums = [6,4,4,3,6,7,3,2]
print(remove_duplicates(nums))