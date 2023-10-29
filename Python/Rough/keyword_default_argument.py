# calling function with keyword argument.

def studinfo(firstname,lastname="jim",standard="tenth"):
    print(firstname,lastname,'studies in',standard,'Standard')

# 1st positional argument
studinfo(firstname='jam')
# 3 positional arguments    
studinfo(firstname='atharva',lastname='karkar',standard='ninth')
#2 positional arguments
studinfo(firstname='Jonh',lastname='Shon')


# default values indicate that the function argument will take that value if no argument value is passed during the function call. The default value is assigned by using the assignment operator(=) of the form keywordname = value.