# function that takes a list of integers and 
# a target sum, and returns the number of unique pairs that 
# add up to the target sum.
# Input: [1, 5, 7, -1, 5], target = 6  
# Output: 3  


def target_pairs(numbers, target):
    seen = set()
    pairs = []
    for i in numbers:
        compliments = target - i
        if compliments in seen:
            pairs.append((compliments,i))
        seen.add(i)
    return pairs

print(target_pairs([1, 5, 7, -1, 5],6))


