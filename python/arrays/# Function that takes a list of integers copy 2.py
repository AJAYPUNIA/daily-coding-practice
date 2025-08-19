# Function that takes a list of integers and returns True if there are 
# any duplicates, and False otherwise.

def check_duplicates(numbers):
    for num in numbers:
        if numbers.count(num) > 1:
            return True
    return False


# solution 2

def check_duplicates(numbers):
    seen = set()
    for num in numbers:
        if num in seen:
            return True
        seen.add(num)
    return False
        