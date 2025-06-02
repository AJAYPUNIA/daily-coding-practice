# Input: nums = [2, 4, 3, 5, 7, 8, -1], target = 7  
# Output: [(2, 5), (4, 3), (8, -1)]
# Find All Pairs with a Given Sum
nums = [2, 4, 3, 5, 7, 8, -1]
target = 7 

def find_pairs(nums, target):
    seen = set()
    pairs = []
    for num in nums:
        complement = target - num
        if complement in seen:
            pairs.append((complement, num))
        seen.add(num)
    return pairs

print(find_pairs([2, 7, 11, 15, 1, 8], 9))