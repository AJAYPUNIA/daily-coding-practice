#remove duplicates keep order
nums = [1, 2, 2, 3, 4, 1, 5]
def duplicates_removes(nums):
    seen = set()
    result = []
    for i in nums:
        if i not in seen:
            result.append(i)
            seen.add(i)
    return result
