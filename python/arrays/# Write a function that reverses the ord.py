# Write a function that reverses the order of words in a given sentence,
# but not the words themselves.


def reverse_words(sentence):
    words = sentence.split()
    reversed_words = reversed(words)
    return ' '.join(reversed_words)

print(reverse_words("Data science is powerful"))