# Query to return the most frequent element in the list 

def most_freq(nums):
    seen = {}
    for i in nums:
        if i in seen:
            seen[i] +=1
        else:
            seen[i] = 1
    return max(seen , key = seen.get)


nums = [1, 3, 2, 1, 4, 1, 3]

print(most_freq(nums))