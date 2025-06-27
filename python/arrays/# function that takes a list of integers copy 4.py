#  function that takes a list of integers and
# returns the number that appears most frequently.
# If there is a tie, return any one of the most frequent numbers.


def most_freq(numbers):
    counts = {}
    for num in numbers:
        if num in counts:
            counts[num] +=1
        else:
            counts[num] = 1
    return max(counts, key = counts.get)

print(most_freq([1, 3, 2, 3, 4, 1, 3]))

