# function that takes a sentence (string) and returns the word that
# appears most frequently. Ignore punctuation and make the comparison
# case-insensitive. If there’s a tie, return the word that comes first 
# alphabetically.

import string
def most_repword(sentence):
    sentence = sentence.lower()
    for punc in string.punctuation:
        sentence = sentence.replace(punc,'')
    words = sentence.split()
    counts = {}
    for word in words:
        if word in counts:
            counts[word]+=1
        else:
            counts[word] = 1
    max_counts = max(counts.values())
    return [word for word, count in counts.items() if count == max_counts]


print(most_repword("Data drives decisions. Data is power. Science is data!"))
