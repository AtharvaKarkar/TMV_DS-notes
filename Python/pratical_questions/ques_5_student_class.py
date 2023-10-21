##Write a python code to print 10 student details using class and lists

# Define the Student class
class Student:
    def __init__(self, name, roll_number):
        self.name = name
        self.roll_number = roll_number

# List to store student details
students = [
    Student("John", "CS101"),
    Student("Alice", "CS102"),
    Student("Bob", "CS103"),
    Student("Eva", "CS104"),
    Student("Alex", "CS105"),
    Student("Sara", "CS106"),
    Student("Mike", "CS107"),
    Student("Jenny", "CS108"),
    Student("David", "CS109"),
    Student("Emily", "CS110")
]

# Printing details of all students
print("Details of 10 students:")
for student in students:
    print(f"Name: {student.name}, Roll Number: {student.roll_number}")
