# function that takes a sentence and reverse each word in place 
# Output = "ataD ecneicS si looc"

Input = "Data Science is cool"

def reverse_word(Input):
    Input = Input.split()
    reverse_word = [word[::-1] for word in Input]
    return ' '.join(reverse_word)
    
print(reverse_word(Input))