# reverse words in a string

sentence = "Data science is powerful"

def reverse(sentence):
    split_words = sentence.split()
    reverse_words = split_words[::-1]
    result = ' '.join(reverse_words)
    return result
    