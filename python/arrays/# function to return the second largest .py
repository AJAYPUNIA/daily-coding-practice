# function to return the second largest unique number in a list.

def second_largest(nums):
    unique_sorted = sorted(set(nums))
    if len(unique_sorted) <2:
        return None
    return unique_sorted[-2]


numbers = [3, 1, 4, 4, 5, 5, 2]
print(second_largest(numbers))