# find the first Non-repeating character 

text = "aabbccdeeffg"

def non_repeat(text):
    for i in text:
        if text.count(i) == 1:
            return i
    return None