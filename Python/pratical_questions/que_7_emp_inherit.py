##Write a python code to inherit employee class to student class

# Parent class: Employee
class Employee:
    def __init__(self, name, employee_id):
        self.name = name
        self.employee_id = employee_id

# Child class: Student (inherits from Employee)
class Student(Employee):
    pass

# Creating an instance of the Student class
student = Student("John", "S101")

# Printing details of the student
print(f"Student Name: {student.name}, Student ID: {student.employee_id}")
