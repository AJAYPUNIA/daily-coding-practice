# A string s and an integer k, return all substrings of length
# k that appear more than once in the string.
# The result should be unique and can 
# be in any order.


def find_repeated_substrings(s,k):
    seen = {}
    result = set()

    for i in range(len(s)-k+1):
        substring  = s[i:i+k]
        if  substring in seen:
            result.add(substring)
        else:
            seen[substring] = 1
    return list(result)

print(find_repeated_substrings("abcdabc", 3))