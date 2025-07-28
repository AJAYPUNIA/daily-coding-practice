# write a function that takes a list and returns a new list with all duplicates 
#  removed, but the original order preserved.


def remove_dupliactes(list_1):
    seen = set()
    result = []
    for item in list_1:
        if item not in seen:
            seen.add(item)
            result.append(item)
    return result

print(remove_dupliactes([1, 2, 2, 3, 1, 4, 3]))