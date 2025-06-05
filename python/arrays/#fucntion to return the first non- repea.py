#fucntion to return the first non- repeative character in a string
word_1 = "programming"

def first_nonrep(word_1):
    for i in word_1:
        if word_1.count(i) == 1:
            return i
    return None
print(first_nonrep("programming"))
