#  given a string s. A character is unique in a substring 
# if it appears exactly once. Return the sum of unique characters
# for all substrings of s.


def uniquelettersstring(s):
    index= {}
    for i,char in enumerate(s):
        if char not in index:
            index[char] = []
        index[char].append(i)
    total = 0
    for positions in index.values():
        positions = [-1] +positions +[len(s)]
        for i in range(1,len(positions)-1):
            left = positions[i] - positions[i-1]
            right = positions[i+1] - positions[i]
            total += right*left
    return total

print(uniquelettersstring("ABC"))



