# function to check if two lists are equal, regardless of order and duplicates.

list1 = [1, 2, 3, 4, 4]
list2 = [4, 3, 2, 1, 4]
def check_equality(list1,list2):
    sorted_list1 = sorted(list1)
    sorted_list2 = sorted(list2)
    if sorted_list1 == sorted_list2:
        return True
    else:
        return False
    
print(check_equality([1,2,3,4,5,],[1,3,2,4,5,]))
    
