#  function that takes a list of integers and
# returns a dictionary with each unique number
#  as a key and its count as the value.


def count_numbers(numbers):
    counts = {}
    for num in numbers:
        if num in counts:
            counts[num] +=1
        else:
            counts[num] = 1
    return counts

print(count_numbers([1, 2, 2, 3, 3, 3, 4]))