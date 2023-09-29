"""
1. Parameter:  A parameter is the variable defined within the parameters during function defination. Simply they are written when we declare a function.
  
def add(a,b):   # here a and b are parameters.
    print(a+b)
add(1,2)
           
           
           
2. Arguments : A arguments is a value that is passed to a function when it is called. It might be a variable,value or object passed to a function or method as input. They are written when we are calling the function.

def add(a,b):
    print(a+b)

# here 1,2 are the argument values that are been passed to add function.
add(1,2)
            
"""


def add(num1,num2):
    sum = num1+num2
    
    return sum

num1,num2 = 4,2
ans = add(num1,num2)
print(f"The addition of {num1} and {num2} result: {ans}")
    