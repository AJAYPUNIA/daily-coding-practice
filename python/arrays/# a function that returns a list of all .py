# a function that returns a list of all duplicate elements, in the order they first appear.

nums = [1, 2, 3, 2, 4, 5, 3, 6, 1]


def duplicates_number(nums):
    seen = set()
    duplicates = []
    for num in nums:
        if num in seen and num not in duplicates:
            duplicates.append(num)
        else:
            seen.add(num)
    return duplicates