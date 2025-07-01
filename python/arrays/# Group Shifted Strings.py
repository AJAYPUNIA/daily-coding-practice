# Group Shifted Strings

# 🔹 Task:
# You are given a list of lowercase strings. 
# Group the strings that belong to the same shifting sequence.

# 🔸 Shifting Sequence:
# A shifting sequence is where each letter can be “shifted” 
# to the next (e.g., "abc" → "bcd" → "cde").
import string
def group_string(words):
    words = words.split()
    result = {}

    for word in words:
        # key differnce pattern bewteen each chacter and the first
        key = tuple((ord(c) - ord(word[0]))% 26 for c in word)
        if key in result:
            result[key].append(word)
        else:
            result[key] =[word]

    return list(result.values())

print(group_string("abc bcd acef xyz az ba a z"))
