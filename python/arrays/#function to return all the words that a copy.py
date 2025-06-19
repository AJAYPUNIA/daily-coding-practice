# Python function that takes a list of integers and 
# returns the element that appears most frequently.
# If there’s a tie, return the smallest number among them.

def most_frequent(numbers):
    freq = {}
    for num in numbers:
        freq[num] = freq.get(num,0) + 1
    return max(freq, key = freq.get)

print(most_frequent([1, 3, 2, 3, 4, 1, 3]))
