#  function that takes a sentence (a string) and
# returns a new sentence with the words in reverse order.
# Input: "Data Science is powerful"
# Output: "powerful is Science Data"


def reverse_string(string):
    string = string.split()
    result = reversed(string)
    return ' '.join(result)


print(reverse_string("Data Science is powerful"))



