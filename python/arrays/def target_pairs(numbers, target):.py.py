def target_pairs(numbers, target):
    seen = set()
    pairs = []
    for num in numbers:
        if target - num in seen:
            pairs.append((num, target - num))
        seen.add(num)
    return pairs


print(target_pairs([2, 7, 11, 15], 9))