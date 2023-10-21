# Define the Student class
class Student:
    def __init__(self, name, age, roll_number):
        self.name = name
        self.age = age
        self.roll_number = roll_number

# Given list of students
student_list = [
    Student("John", 20, "CS101"),
    Student("Alice", 21, "CS102"),
    Student("Bob", 19, "CS103"),
    Student("Eva", 22, "CS104")
]

# Function to find a student by their roll number
def find_student_by_roll_number(student_list, roll_number):
    for student in student_list:
        if student.roll_number == roll_number:
            return student
    return None

# Example usage: find a student by roll number
roll_number_to_find = "CS103"
found_student = find_student_by_roll_number(student_list, roll_number_to_find)

# Check if the student was found and print the details
if found_student:
    print(f"Student found - Name: {found_student.name}, Age: {found_student.age}, Roll Number: {found_student.roll_number}")
else:
    print(f"No student found with roll number {roll_number_to_find}")
