# a function that takes a string and reverses only the vowels,
# keeping all other characters in place.

# Input:  "hello"
# Output: "holle"

# Input:  "data science"
# Output: "deta scianca"

def reverse_vowels(sentence):
    vowels = 'aeiouAEIOU'
    stored = [char for char in sentence if char in vowels] # collect vowels
    result = ''
    for char in sentence:
        if char in vowels:
            result+=stored.pop() # get vowels in reverse order 
        else:
            result+=char
    return result


print(reverse_vowels("hello"))



