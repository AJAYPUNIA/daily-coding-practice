# Python function that takes a sentence (string) and 
# returns a dictionary with the frequency of each word.

Input = "Data science is fun and data is powerful"

def word_frequency(sentence):
    sentence = sentence.lower()
    words = sentence.split()
    count = {}
    for word in words:
        if word in count:
            count[word]+=1
        else:
            count[word]=1
    return count
print(word_frequency("Data science is fun and data is powerful"))