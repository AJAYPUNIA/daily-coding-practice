#  Python function that returns the factorial of a given number.

def factorial(num):
    result = 1
    if num <= 1:
        return 1
    for i in range(1,num+1):
        result *=i
    return result

print(factorial(5))
