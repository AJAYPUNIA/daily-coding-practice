#Python function that takes a string (sentence) 
# and returns the word that appears most frequently. 
# If there’s a tie, return the word that comes first alphabetically.
import string
def most_rep(sentence):
    sentence = sentence.lower()
    for char in string.punctuation:
        sentence = sentence.replace(char,"")
    words = sentence.split()
    counts = {}
    for word in words:
        counts[word] = counts.get(word,0)+1
    max_count = max(counts.values())
    max_words = [word for word , count in counts.items() if count == max_count]

    return min(max_words)

print(most_rep("Data is powerful. Data drives decisions. Science is power!"))