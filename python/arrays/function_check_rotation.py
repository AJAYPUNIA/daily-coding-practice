#function that checks whether two strings are rotations of each other.


def check_rotation(str_1, str_2):
    if len(str_1) != len(str_2):
        return False
    return str_2 in (str_1+str_1)

print("cdab" in "abcdabcd")  # True
print("acdb" in "abcdabcd")  # False