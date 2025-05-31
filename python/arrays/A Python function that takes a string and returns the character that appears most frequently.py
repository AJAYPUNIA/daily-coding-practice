#A Python function that takes a string and returns the character that appears most frequently.
Input = "Data Science"

def max_char(text):
    text = text.lower().replace(" ","")
    count = {}
    for i in text:
        if i in count:
            count[i] +=1
        else:
            count[i] = 1
    return max(count, key = count.get)
