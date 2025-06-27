# a function that takes a string and returns a 
# dictionary with the count of each character, 
# excluding spaces. The count should be case-insensitive.

def count_char(sentence):
    sentence = sentence.lower()
    words= sentence.replace(' ','')
    counts = {}
    for char in words:
        if char in counts:
            counts[char]+=1
        else:
            counts[char]=1
    return counts

print(count_char("Data Science"))