# function that takes a list of numbers and returns True if 
# there are any duplicates, otherwise False.


def check_duplicates(numbers):
    for num in numbers:
        if numbers.count(num) > 1:
            return True
    return False

print(check_duplicates([1, 2, 3, 4]))
print(check_duplicates([1, 2, 3, 2]))
