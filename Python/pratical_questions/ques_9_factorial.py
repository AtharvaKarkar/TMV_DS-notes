## py prog to print factorial of a number.

# Function to find the factorial of a number
def factorial(n):
    result = 1
    for i in range(1, n + 1):
        result *= i
    return result

# Given number for which factorial needs to be found
number = int(input("Enter a number to get it's factorial : \n"))

# Finding the factorial of the given number
fact = factorial(number)

# Printing the factorial
print(f"The factorial of {number} is: {fact}")
