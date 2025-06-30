# Write a function that takes a sentence and returns a dictionary 
# with each word as a key and the number of times it appears in 
# the sentence as the value.


def count_words(sentence):
    sentence = sentence.lower()
    words = sentence.split()
    counts = {}
    for word in words:
        if word in counts:
            counts[word]+=1
        else:
            counts[word]=1
    return counts

print(count_words("data science is fun and data is powerful"))
