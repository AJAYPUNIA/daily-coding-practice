# Write a function that takes a paragraph and
# returns the most common word (ignore case and punctuation).
# If there’s a tie, return the word that comes first alphabetically.


import string
def most_common(sentence):
    for punc in string.punctuation:
        sentence = sentence.replace(punc, "")

    sentence = sentence.lower()
    words = sentence.split()

    counts = {}
    for word in words:
        counts[word] = counts.get(word, 0)+1
    max_count = max(counts.values())
        
    max_words = [word for word , count in counts.items() if count == max_count]

    return min(max_words)

print(most_common("Data drives decisions. Data is power. Science is data!"))