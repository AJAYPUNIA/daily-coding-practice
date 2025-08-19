#  a function that removes duplicate numbers from a list and 
# returns them in sorted order.


def remove_duplicates(numbers):
    sorted_numbers = sorted(set(numbers))
    return sorted_numbers


print(remove_duplicates([4, 2, 7, 2, 4, 9, 1]))
