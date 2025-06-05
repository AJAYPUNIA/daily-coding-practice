#function for getting the most frequesnt word in the sentence


def most_freq_word(sentence):
    sentence = sentence.split()
    most_freq = {}
    for word in sentence:
        if word in most_freq:
            most_freq[word]+=1
        else:
            most_freq[word] = 1
    return max(most_freq ,key = most_freq.get)

sentence = ("the sun rises in the east and the sun sets in the west")
print(most_freq_word(sentence))
