#function to check if a number is a perfect square.


def is_perfect_square(num):
    if int(num**0.5)**2 ==num:
        return True
    else:
        return False
print(is_perfect_square(16))