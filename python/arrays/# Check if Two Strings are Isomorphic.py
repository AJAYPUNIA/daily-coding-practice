# Check if Two Strings are Isomorphic

# Two strings s and t are isomorphic if the characters in s 
# can be replaced to get t, with each character mapping 
# to only one other character 
# (but no two characters may map to the same character).


def check_isomorphic(str_1, str_2):
    if len(str_1) != len(str_2):
        return False
    mapping_1 = {}
    mapping_2 = {}
    for char1, char2 in zip(str_1, str_2):
        if (char1 in mapping_1 and mapping_1[char1] != char2) or\
           (char2 in mapping_2 and mapping_2[char2] != char1):
            return False
        mapping_1[char1] = char2
        mapping_2[char2] = char1
    return True
print(check_isomorphic("egg","add"))