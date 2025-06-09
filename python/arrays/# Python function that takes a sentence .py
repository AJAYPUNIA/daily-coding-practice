# Python function that takes a sentence as input and returns the longest word.

def longest_word(sentence):
    words = sentence.lower().split()
    longest = ""
    for i in words:
        if len(i) > len(longest):
            longest = i
    return longest
print(longest_word("Data science is both fun and challenging"))