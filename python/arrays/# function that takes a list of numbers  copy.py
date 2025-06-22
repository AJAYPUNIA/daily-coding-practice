# function that takes a list of numbers and returns the second 
# largest unique number.
# If there is no such number (e.g., all elements are the same), return None.


def second_largest(numbers):
    filtered_numbers = sorted(set(numbers))
    if len(filtered_numbers) < 2:
        return None
    return filtered_numbers[-2]

print(second_largest([4, 1, 7, 7, 2, 4]))