# Write a Python function that takes a sentence as input 
# and returns the longest word in that sentence. If there’s a tie, 
# return the word that appears first.


def longest_word(sentence):
    longest = ""
    sentence = sentence.lower()
    words = sentence.split()
    for word in words:
        if len(word) > len(longest):
            longest = word
    return longest
print(longest_word("Data science is powerful and insightful"))

