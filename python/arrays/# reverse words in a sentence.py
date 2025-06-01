# reverse words in a sentence
sentence = "Data science is powerful"


def reverse_words(sentence):
    sentence = sentence.lower().split()
    new = reversed(sentence)
    return ' '.join(new)