# class : A class is like a blueprint or a set of instructions that tells a computer how to create something called an "instance."

class Employee:
    def __init__(self,fname,lname,pay):  # init constructor.
        self.fname = fname
        self.lname = lname 
        self.pay = pay
        self.email = fname + '.' + lname + '@company.com'
        
        
emp_1 = Employee('Atharva','Karkar',500000)
emp_2 = Employee('Test','User',600000)

  
print(emp_1)  # emp_1 ,emp_2 acts as a employee object of the employee class.
print(emp_2)

"""
emp_1.fname = 'Atharva'
emp_1.lname = 'Karkar'
emp_1.email = 'Atharva.Karkar@company.com'
emp_1.pay = 500000

emp_2.fname = 'Test'
emp_2.lname = 'User'
emp_2.email = 'Test.User@company.com'
emp_2.pay = 600000
"""

print("Email of employee 1 is :",emp_1.email)
print("Email of employee 2 is :",emp_2.email)
print("Full name of the employee is : ",emp_2.fname + " "+ emp_2.lname)