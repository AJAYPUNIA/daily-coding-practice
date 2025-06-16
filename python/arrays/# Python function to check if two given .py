# Python function to check if two given lists are equal after flattening and 
# sorting, even if they are nested differently.


list1 = [1, [2, 3], [4, [5]]]
list2 = [[5], 4, 3, [2, 1]]

def check_equality(list1,list2):
    def flatten_list(nested):
        result = []
        for item in nested:
            if isinstance(item, list):
                result.extend(flatten_list(item))
            else:
                result.append(item)
        return result
    flat_1 = flatten_list(list1)
    flat_2 = flatten_list(list2)

    return flat_1 == flat_2
print(check_equality([1, [2, [3, 4]]], [[1, 2], 3, 4])) 
print(check_equality([1, [2]], [2, 1]))


