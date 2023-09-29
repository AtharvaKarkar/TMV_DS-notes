# position-only arguments mean whenever we pass the arguments in the order we have defined function parameter in which if you change the argument position then you may get the unexpected output.

#we should use positional argument whenever we know the order of argument to be passed.

def nameAge(name,age):
    print('Hi, I am',name, 'my age is',age)

# will get correct output cuz argument is in correct order.
print('Case-1: ')
nameAge('anikt',21)

# you will get incorrect output bcz argument is not in order
print('Case-2')
nameAge(20,'Sumesh')