# a list of strings, group the anagrams together. 
# Return a list of lists, where each inner list contains strings 
# that are anagrams of each other.


def anagrams_pairs(words):
    cleaned_words = words.split()
    result = {}
    for word in cleaned_words:
        key = ''.join(sorted(word))
        if key in result:
            result[key].append(word)
        else:
            result[key]= [word]
    return list(result.values())

print(anagrams_pairs("eat tea tan ate nat bat"))

