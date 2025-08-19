# fucntion to count the vowels in the string



def count_vowels(sentence):
    sentence = sentence.lower()
    vowels = ["a","e","i","o","u"]
    count = 0
    for i in sentence:
        if i in vowels:
            count +=1
    return count


print(count_vowels("Data Science is Powerful"))