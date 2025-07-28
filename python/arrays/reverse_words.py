# Write a Python function that takes a sentence and 
# returns the sentence with the word order reversed.


# Input: "Data science is powerful"
# Output: "powerful is science Data"

def reverse_words(Input):
    Input = Input.split()
    reverse_Input = reversed(Input)
    return ' '.join(reverse_Input)
print(reverse_words("Data science is powerful"))