# You are given a list of unique integers from 1 to n, but one number is missing.
# Write a function to find the missing number.

Input =  [1, 2, 4, 5]

def missing_num(numbers):
    n = len(numbers)+1  # because one number is missing in this so plus 1 in len
    missing_sum = n*(n+1)//2
    sum = 0
    for i in numbers:
        sum +=i
    missed_number = (missing_sum - sum)
    return missed_number
print(missing_num([1, 2, 4, 5]))
