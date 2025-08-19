#  function that takes a list of strings and 
# groups the anagrams together.

def group_anagram(words):
    count = {}
    for word in words:
        key = ''.join (sorted(word))
        if key in count:
            count[key].append(word)
        else:
            count[key] = [word]
    return list(count.values())
print(group_anagram(["eat", "tea", "tan", "ate", "nat", "bat"]))