# function that takes a string (sentence) and returns the most frequent
# word (ignoring case and punctuation).
# If there’s a tie, return the lexicographically 
# smallest word (alphabetically smallest).


import string
def most_freq(sentence):
    for punc in string.punctuation:
        sentence = sentence.replace(punc, "")
    sentence = sentence.lower()

    #split into words
    words = sentence.split()
    counts = {}
    for word in words:
        counts[word] = counts.get(word, 0)+1

    max_frequency = max(counts.values()) 

    max_words = [word for word , count in counts.items() if count == max_frequency]
    return min(max_words)  

sentence = "Data is power. Data drives decisions. Power is great."
print(most_freq(sentence))       