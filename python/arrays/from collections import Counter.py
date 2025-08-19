from collections import Counter 
def calculations(nums):
    mean = sum(nums)/len(nums)

    num_sorted = sorted(nums)
    n = len(nums)
    if n%2==0:
        median = (num_sorted[n//2-1]+num_sorted[n//2])/2
    else:
        median = (num_sorted[n//2])
    counts = Counter(nums)
    mode = max(counts, key = counts.get)
    return mean, median, mode
print(calculations([1,2,3,4,5,6]))
    