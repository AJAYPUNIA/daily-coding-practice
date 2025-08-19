# function to find the second largest number in a list of integers.


Input =  [10, 5, 20, 8, 15]
# Output: 15

def second_highest(Input):
    Input = sorted(set(Input))
    return Input[-2]
print(second_highest(Input))