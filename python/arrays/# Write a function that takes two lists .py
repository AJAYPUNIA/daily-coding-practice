# Write a function that takes two lists and 
# returns a list of the elements that appear 
# in both lists, without duplicates. The result 
# should be sorted in ascending order.



def common_elements(list1, list2):
    sorted_list1 = set(list1)
    sorted_list2 = set(list2)
    intersect_list = sorted_list1&sorted_list2
    return sorted(intersect_list)
print(common_elements([4, 2, 3, 1, 5],[7, 3, 2, 9, 1]))