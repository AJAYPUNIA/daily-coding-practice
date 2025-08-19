#  Python function to check if a number is a palindrome 
# (reads the same forward and backward).


def check_pallindrome(num):
    num_str = str(num)
    if num_str == num_str[::-1]:
        return True
    else:
        return False
    
print(check_pallindrome(121))