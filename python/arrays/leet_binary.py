# Given two binary strings a and b, return their sum as a binary string.

 

# Example 1:

# Input: a = "11", b = "1"
# Output: "100"
# Example 2:

# Input: a = "1010", b = "1011"
# Output: "10101"



def binary_add(a,b):
    num1 = int(a, 2)
    num2 = int(b, 2)

    total = num1 + num2
    return bin(total)[2:]
a = "11"
b = "1"
print(binary_add(a,b))
