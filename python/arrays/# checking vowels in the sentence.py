# checking vowels in the sentence

text = "Data science is awesome"

def count_vowels(text):
    count = 0
    filter = text.lower()
    vowels = ['a','e','i','o','u']
    for i in filter:
        if i in vowels:
            count +=1
    return count