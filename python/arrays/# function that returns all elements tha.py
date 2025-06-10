# function that returns all elements that appear more than once in a list.

numbers = [4, 3, 2, 7, 8, 2, 3, 1]


def duplicates_number(numbers):
    seen = set()
    duplicates = set()
    for i in numbers:
        if i in seen:
            duplicates.add(i)
        else:
            seen.add(i)
    return list(duplicates) 

print(duplicates_number(numbers))