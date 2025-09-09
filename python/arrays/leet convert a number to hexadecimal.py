# Given a 32-bit integer num, return a string representing its hexadecimal representation. For negative integers, two’s complement method is used.

# All the letters in the answer string should be lowercase characters, and there should not be any leading zeros in the answer except for the zero itself.

# Note: You are not allowed to use any built-in library method to directly solve this problem.

 

# Example 1:

# Input: num = 26
# Output: "1a"


def tohex(num):
    if num == 0:
        return "0"
    if num < 0:
        num += 2**32
    hex_chars = "0123456789abcdef"
    res = []


    while num > 0:
        remainder = num % 16
        res.append(hex_chars[remainder])
        num //= 16 
    return "".join(reversed(res))
    
