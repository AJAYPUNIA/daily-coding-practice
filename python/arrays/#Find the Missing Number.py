#Find the Missing Number


def missing_number(Input):
    n = len(Input)+1
    total = n*(n+1)//2
    return total - sum(Input)

print(missing_number([1,2,4,5]))