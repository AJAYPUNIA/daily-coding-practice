# Write a function that takes a list of integers and 
# returns True if the list contains any duplicate values,
# otherwise returns False.

def check_dupliocate(numbers):
    for num in numbers:
        if numbers.count(num) >1:
            return True
    else:
        return False
    
print(check_dupliocate([1, 2, 3, 4, 5,]))
print(check_dupliocate([1, 2, 3, 4, 1]))
    