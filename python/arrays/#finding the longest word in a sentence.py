#finding the longest word in a sentence
sentence = "Data science is the future of technology"

def longest_word(sentence):
    sentence =  sentence.lower().split()
    longest = ""
    for word in sentence:
        if len(word) > len(longest):
            longest = word
    return longest

    
