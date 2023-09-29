# write a function sum to accept the values from user and print addition of 2 numbers 
"""
a = int(input("Enter a number\n"))
b = int(input("Enter another number\n"))

def sum():  # sum() function defined 
  sum = a+b
  print(sum)
sum()  # function is being called  

 # global and local variable
addition =0
def sum():
    addition = a+b
    print("The addition is ",addition)
    
sum()
print(addition) """

"""
# write a function square

a = int(input("Enter a num"))

def square(a):  # passing parameter., it holds the value for function.
    sq = a**2
    print(sq)
    
square(a)  
"""

# wap to accept a number from user pass that number to a function square

    
    
# function argument with default values.


"""
def sum(num1=1,num2=2):
    print(num1+num2)
    print(num1,num2)

sum(num1=5,num2=6)"""


# python keyword argument : in keyword arguments , arguments are assigned based on the name of arguments 
"""fname = input("Enter first name\n")
lname= input("Enter last name\n") """
"""def display_name(fname,lname):
    print("First name is: ",fname)
    print("Last name is:",lname)
                                                 # position of the element does not matter in such keyword argument.
    print(fname+lname)
    
display_name(lname="kumar",fname="akshay")
"""


# python arbitary argument : used when you don't know the number of argument that are being required.
"""
def sum(*no):
    for i in no:
        sum=+i
    return sum

result=sum(1,2,3,4,5)
print("The result is",result)"""


# question : make a list of fruits and print that element which has a & print it in display function

fruits = ["apple","banana","dragonfruit","mango","Pine","berry"]

f=[]
def find_a(fruits):
    for  fruit in fruits:   # used membership operator (in)
        if 'a' in fruit:
            f.append(fruit)
    print(f)
                    
find_a(fruits)
    
# use function in all prog    
# prog to find largest prime factor of a number. 
# prog to check if binary representation is palindrome   output : yes or no
# prog to find most occuring charachter in and print it's count  // use function 
# prog to replace whitespaces with and underscore (__) and vice versa // use fun  





    



