# Write a function that takes a string and returns a dictionary 
# where the keys are words and the values are the number of 
# times each word appears



def count_words(sentence):
    sentence = sentence.lower()
    words = sentence.split()
    counts = {}
    for word in words:
        if word in counts:
            counts[word]+=1
        else:
            counts[word] = 1
    return counts

print(count_words( "data is power and data drives decisions"))