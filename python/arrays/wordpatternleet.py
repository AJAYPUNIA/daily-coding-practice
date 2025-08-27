def wordPattern(pattern, s):
    words = s.split()
    if len(pattern) != len(words):
        return False
    
    p2w = {}
    used_words = set()

    for ch , w in zip(pattern , words):
        if ch in p2w: 
            if p2w[ch]  !=w:
                return False
        else:
            if w in used_words:
                return False
            p2w[ch] = w
            used_words.add(w)
    return True
