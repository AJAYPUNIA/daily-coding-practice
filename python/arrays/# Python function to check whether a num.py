# Python function to check whether a number is a perfect number.
# A perfect number is a number that is equal to the sum of its positive divisors,
# excluding itself.


def perfect_number(num):
    total = 0
    for i in range(1,num):
        if num%i == 0:
            total +=i
    return total == num

print(perfect_number(6))