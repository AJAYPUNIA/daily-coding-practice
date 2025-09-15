# Given two non-negative integers, num1 and num2 represented as string, return the sum of num1 and num2 as a string.

# You must solve the problem without using any built-in library for handling large integers (such as BigInteger). You must also not convert the inputs to integers directly.

 

# Example 1:

# Input: num1 = "11", num2 = "123"
# Output: "134"


def addstrings(num1 , num2):
    i , j = len(num1)- 1  , len(num2)- 1
    carry = 0
    res = []


    while i >= 0 or j >= 0 or carry:
        d1 = int(num1[i]) if i >= 0 else 0
        d2 = int(num2[j]) if j >= 0 else 0

        total = d1 + d2 + carry
        res.append(str(total % 10))
        carry = total // 10


        i -= 1
        j -= 1
        return ''.join(reversed(res))