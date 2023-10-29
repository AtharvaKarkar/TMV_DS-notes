# Defining a global variable
global_var = 10

# Accessing the global variable inside a function
def access_global():
    print("Global variable inside the function:", global_var)

# Calling the function
access_global()

# Modifying the global variable inside a function
def modify_global():
    global global_var
    global_var = 15
    print("Modified global variable inside the function:", global_var)

# Calling the function to modify the global variable
modify_global()

# Printing the global variable after modification
print("Global variable after modification:", global_var)
