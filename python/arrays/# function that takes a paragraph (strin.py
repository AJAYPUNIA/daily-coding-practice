s# function that takes a paragraph (string) and
# returns the number of unique words (case-insensitive), ignoring punctuation.
import string
def count_unique_words(sentence):
    sentence = sentence.lower()
    for word in string.punctuation:
        sentence = sentence.replace(word,"")

        words = sentence.split()

        unique_words = set(words)

        return len(unique_words)


print(count_unique_words("Data Science is great. Science is powerful, and data drives decisions."))
