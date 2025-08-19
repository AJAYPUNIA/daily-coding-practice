# Write a Python function that takes two sorted lists and merges them into a single sorted list.

# You should not use Python’s built-in sort() function.

def merge_lists(list_1, list_2):
    merged = []
    i , j = 0, 0
    while i < len(list_1) and j < len(list_2):
        if list_1[i] < list_2[j]:
            merged.append(list_1[i])
            i+=1
        else:
            merged.append(list_2[j])
            j+=1

    # appending remaining elements if left
    while i < len(list_1):
        merged.append(list_1[i])
        i+=1
    while j < len(list_2):
        merged.append(list_2[j])
        j+=1
    return merged

print(merge_lists([1, 3, 5], [2, 4, 6]))
