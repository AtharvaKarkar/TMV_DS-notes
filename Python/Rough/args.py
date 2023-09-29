# *args allows us to take in more arguments than the number of extra arguments can be tacked on to your current formal parameters(including zero extra argument).


def sum_nums(*args):
    total=0
    for num in args:
        total = total + num
    return total
result = sum_nums(1,2,3,4,5)
print(result)
    
# name and age are regular parameters , *args collects additional info about the person. We can pass as many additional pieces of info as needed.
def describe_person (name,age,*args):
    print(f"Name: {name}")
    print(f"Age:{age}")
    print(f"Additional Info: \n")
    
    for info in args:
        print(info)
describe_person("Alice", 30, "Occupation: Engineer", "Hobbies: Reading", "Location: New York")


def args_function(*argv):
    for arg in argv:
        print(arg)
    
args_function('hello','this','side','gfg')



# prog with extra arguemnt 
# args1 : is a regular parameter
# *args: it's an Non-keyword argument / parameter
def myFun(args1,*args):
    print("First argument:",args1)
    
    for arg in args:
        print("Next argument through *args is: ",args)
        
myFun('Hello', 'Welcome', 'to', 'GeeksforGeeks')
        

        