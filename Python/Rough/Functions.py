# function : block of code, which performs specific task.

# Types of function:
  # 1. Standard library function : these are built-in functions in py that are avaliable for us.
  # 2. User-defined function : We can create our own functions based on our requirements.

name = input("Enter your name\n")
def greet():
    print("Enter inside function")
    print(f'namaste {name}')
# driver code of the greet() function.
greet()  # calling the function, so that we can use it.,after calling the function the control / flow of the program goes to the function defination.
print("exited function")

# function arguments : an argument is a value that is accepted by a fuction.
def add_num(num1,num2):
    print(num1)
    print(num2)
    sum = num1+num2
    print('Sum:',sum)
add_num(num1=1,num2=2)
        
# square of a num

num = int(input("Enter a num\n"))

def square(num):
  
  sq = num **2
  print("Square of the number is ",sq)
square(num)


def hello_fun():
  return 1    # The value that you specify after the 'return' keyword is what the function will output when it's executed.
result = hello_fun()
print(result)

print(len("atharva"))