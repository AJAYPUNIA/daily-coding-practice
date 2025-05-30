# write a function to get the sum of digits 
Input = 1234

def sum_numbers(numbers):
    count = 0
    for digits in str(numbers):
        count += int(digits)
    return count

print(sum_numbers(1234))

