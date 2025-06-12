# function to check if a number is a power of two.

def power_2(num):
    if num <=0:
        return False
    while num%2==0:
        num = num //2
    return num ==1


print(power_2(8))
print(power_2(23))



