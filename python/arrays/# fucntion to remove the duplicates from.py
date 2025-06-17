# fucntion to remove the duplicates from the list and make a new 
# list with no duplicates
def remove_duplicates(student_list):
    seen = set()
    unique_student =[]
    for student in student_list:
        identifier = (student["name"], student["id"])  # tuple is hasable
        if identifier not in seen:
            seen.add(identifier)
            unique_student.append(student)
    return unique_student
