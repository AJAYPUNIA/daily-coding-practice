# function that takes a sentence (string) and returns
#  the total number of words.

Input = "This is a data science interview"

def count_words(Input):
    Input = Input.split()
    return len(Input)

print(count_words(Input))


