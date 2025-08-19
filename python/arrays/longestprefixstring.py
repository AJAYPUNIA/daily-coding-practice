# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

 

# Example 1:

# Input: strs = ["flower","flow","flight"]
# Output: "fl"


def longestcommanprefix(strs):
    if not strs:
        return ""
    
    strs.sort()
    first = strs[0]
    last = strs[-1]
    prefix = ""
    for i in range(min(len(first), len(last))):
        if first[i] == last[i]:
            prefix+= first[i]
        else:
            break
    return prefix
print(longestcommanprefix(["flower", "flow", "flight"]))