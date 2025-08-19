# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.
 

# solution


def isvalid(s):
    match = {'(':')','{':'}','[':']'}
    stack = []
    for ch in s:
        if ch in match:
            stack.append(ch)
        else:
            if not stack or match[stack[-1]] != ch:
                return False
            stack.pop()
    return not stack


print(isvalid("()"))