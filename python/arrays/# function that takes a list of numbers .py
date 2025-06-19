# function that takes a list of numbers and returns all the pairs that 
# sum up to a given target.

def target_pairs(nums, target):
    seen = set()
    pairs = []
    for i in nums:
        needed = target -i
        if needed in seen:
            pairs.append((needed,i))
        seen.add(i)
    return pairs 
print(target_pairs([1, 2, 3, 4, 5], 6))


