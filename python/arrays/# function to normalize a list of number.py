# function to normalize a list of numbers between 0 and 1 using Min-Max scaling.


def normalize(nums):
    min_value = min(nums)
    max_value = max(nums)
    normalised = []
    for i in nums:
        normalization = (i - min_value)/(max_value-min_value)
        normalised.append(normalization)
    return normalised

nums = [10,30,50,39,80,100]
print(normalize(nums))