#  a function that returns the longest word in a given sentence.



def check_longest(sentence):
    sentence = sentence.split()
    longest = ""
    for word in sentence:
        if len(word) > len(longest):
            longest = word
    return longest

print(check_longest("This is a data science challenge"))
