# function that takes a string sentence and 
# returns a new string where each word is reversed,
# but the order of words remains the same.


def reverse_string(sentence):
    sentence = sentence.lower()
    words = sentence.split()
    reversed_words = [word[::-1] for word in words]
    return ' '.join (reversed_words)

print(reverse_string("Data science is powerful"))
