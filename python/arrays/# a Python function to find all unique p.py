# a Python function to find all unique pairs of numbers in the list that add up to the target.

nums = [2, 4, 3, 5, 7, 8, 1]
target = 9

def make_target(nums, target):
    seen = set()
    pairs = []
    for i in nums:
        needed = target - i
        if needed in seen:
            pairs.append((needed, i))
        seen.add(i)
    return pairs

print(make_target(nums,target))
