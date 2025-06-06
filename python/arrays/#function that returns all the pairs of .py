#function that returns all the pairs of integers in a list that sum up to a target number.

def find_pairs(nums,target):
    seen = set()
    pairs = []
    for i in nums:
        needed = target - i
        if needed in seen:
            pairs.append((needed, i))
        seen.add(i)
    return pairs 


print(find_pairs([1,2,3,4,5,6,7,8,9],(7)))
