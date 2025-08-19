# function that takes a list of integers and returns 
# a new list with duplicates removed, preserving the original order.


def without_duplicates(numbers):
    seen = set()
    result = []
    for num in numbers:
        if num not in seen:
            result.append(num)
            seen.add(num)
    return result
print(without_duplicates( [1, 3, 2, 3, 4, 1]))


