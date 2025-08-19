# most frquest element in the list 

nums = [1, 3, 2, 1, 4, 1, 3]
def most_freq(nums):
    freq = {}
    for i in nums:
        if i in freq:
            freq[i] +=1
        else:
            freq[i] = 1
    return max(freq, key = freq.get)