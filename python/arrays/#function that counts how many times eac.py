#function that counts how many times each word appears in a sentence.
#  The count should ignore case and punctuation.

sentence= "Data science is fun, and learning Data Science is cool!"


def count_words(sentence):
    sentence = sentence.lower()
    sentence = sentence.replace(".","").replace("!","").replace(",","")
    words = sentence.split()
    counts = {}
    for word in words:
        if word in counts:
            counts[word]+= 1
        else:
            counts[word] = 1
    return counts

print(count_words("Data science is fun, and learning Data Science is cool!"))
