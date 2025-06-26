# function that takes a list of integers and returns 
# True if there are any two numbers that add up to a given target
# , otherwise returns False.
# has_pair_with_sum([10, 15, 3, 7], 17)


def find_pairs(numbers, target):
    seen = set()
    for num in numbers:
        if (target-num) in seen:
            return True
        seen.add(num)
    return False


print(find_pairs([10, 15, 3, 7], 17))