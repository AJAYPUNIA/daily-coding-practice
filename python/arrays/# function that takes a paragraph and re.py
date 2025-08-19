# function that takes a paragraph and returns the top 2 most frequent words 
# (ignoring case and punctuation).
import string
from collections import Counter
def top_two_words(para):
    para = para.lower()
    #remove punctuation
    for p in string.punctuation:
        para = para.replace(p,"")
    words = para.split()

    count = Counter(words)
    #get the top two common words
    return [word for word, freq in count.most_common(2)]



print(top_two_words("Data is powerful. Data drives decisions. Science is power!"))
   
