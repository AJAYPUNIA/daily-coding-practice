# function that takes a list of integers and returns 
# a new list with only the prime numbers.


numbers = [4, 5, 6, 7, 8, 9, 10, 11]

def only_primes(numbers):
    prime = []
    for num in numbers:
        if num <2:
            continue
        for i in range(2, int(num **0.5)+1):
            if num % i ==0:
                break
        else:
            prime.append(num)
    return prime

print(only_primes(numbers))
