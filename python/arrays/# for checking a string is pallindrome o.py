# for checking a string is pallindrome or not
# option 1
def check_pallindrome(word):
    if word == ''.join(reversed(word)):
        print("it is a pallindrome", word)
    else:
        print("it is not a pallindrome", word)


# option 2
def check_pallindrome(word):
    word = word.lower()
    if word == word[::-1]:
        
        print("it is a pallindrome", word)
    else:
        print("it is not a pallindrome", word)

    print(check_pallindrome("madam"))