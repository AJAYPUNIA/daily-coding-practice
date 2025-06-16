#Python function to find the most frequent word in a given sentence.



from collections import Counter

def most_occured(sentence):
    sentence = sentence.lower()
    words = sentence.split()
    counts = Counter(words)
    return max(counts , key = counts.get)

print(most_occured("Data is powerful and data drives decisions"))