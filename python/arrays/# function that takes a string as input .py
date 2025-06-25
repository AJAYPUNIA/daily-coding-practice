# function that takes a string as input and returns the number of
# vowels (a, e, i, o, u) in it. The function should be case-insensitive.


def count_vowels(sentence):
    words = sentence.lower()
    count = 0
    vowels = ["a", "e", "i", "o","u"]
    for i in words:
        if i in vowels:
            count+=1
    return count
print(count_vowels("Data Science is Powerful"))