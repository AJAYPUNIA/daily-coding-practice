#fucntion to find the second highest number from the list

Input = [3, 5, 2, 9, 7]

def second_highest(Input):
    unique_number = list(set(Input))
    unique_number.sort()
    return unique_number[-2]
print(second_highest([3, 5, 2, 9, 7]))
