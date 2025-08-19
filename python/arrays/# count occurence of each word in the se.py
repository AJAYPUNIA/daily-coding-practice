# count occurence of each word in the sentence

sentence = "Data science makes science powerful"

def word_count(sentence):
    words = sentence.lower().split()
    count = {}
    for word in words:
        if word in count:
            count[word] +=1
        else:
            count[word]=1
    return count

print(word_count(sentence))