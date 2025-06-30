# Write a function that takes a list of integers and
# returns the number that appears only once.

# Every other number appears twice.

def appear_once(numbers):
    for num in numbers:
        if numbers.count(num) == 1:
            return num
    return None

print(appear_once([2, 3, 5, 4, 5, 3, 4]))




