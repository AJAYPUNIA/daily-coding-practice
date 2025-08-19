# Python function that finds the longest word in a sentence.



def longest_word(sentence):
    words = sentence.lower().split()
    longest = ""
    for word in words:
        if len(word) > len(longest):
            longest = word
    return longest

# check
sentence = "Data science is both fun and challenging"
print(longest_word(sentence))
