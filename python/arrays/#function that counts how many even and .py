#function that counts how many even and odd numbers are in a given list.


def count_odd_even(Input):
    counts = {"even":0,"odd":0}
    for num in Input:
        if num%2==0:
            counts["even"] +=1
        if num%2!=0:
            counts["odd"] +=1
    return counts

print(count_odd_even([1,2,3,4,5,6,7,8,9,10]))