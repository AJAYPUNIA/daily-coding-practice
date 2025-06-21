# Given a list of strings, group the anagrams together.

from collections import defaultdict
def group_anagrams(words):
    result = defaultdict(list)

    for word in words:
        sorted_word = ''.join(sorted(word))    
        result[sorted_word].append(word)

    return list(result.values())

words = ["eat", "tea", "tan", "ate", "nat", "bat"]
print(group_anagrams(words))



