# fucntion to check whether a given number is a prime number or not.


def check_prime(num):
    if num < 2:
        return False
    for i in range(2,int(num**0.5)+1):
        if num%i == 0:
            return False
    return True

print(check_prime(9))
print(check_prime(7))