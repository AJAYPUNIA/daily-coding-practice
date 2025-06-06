#Merge Two Sorted Lists

def merge_list(list_1, list_2):
    i = 0
    j = 0
    result = []
    while i < len(list_1) and j < len(list_2):
        if list_1[i] < list_2[i]:
            result.append(list_1[i])
            i +=1
        else:
            result.append(list_2[j])
            j +=1
    while i < len(list_1):
        result.append(list_1[i])
        i +=1
    while j < len(list_2):
        result.append(list_2[j])
        j +=1
    return result


print(merge_list([1,2,3],[4,5,6]))
