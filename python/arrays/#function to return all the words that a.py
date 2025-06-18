#function to return all the words that appear more than once in a sentence.

def rep_words(sentence):
    sentence = sentence.lower()
    words = sentence.split()
    repititive_words = []
    for word in words:
        if words.count(word) > 1 and word not in repititive_words:
            repititive_words.append(word)
        else:
            None
    return repititive_words
print(rep_words("Data science is powerful and data drives decisions"))
