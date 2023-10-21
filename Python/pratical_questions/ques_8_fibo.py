## Display Fibonacci series up to 10 terms

# Function to print Fibonacci series up to n terms
def fibonacci(n):
    fib_series = [0, 1]
    for i in range(2, n):
        next_term = fib_series[i-1] + fib_series[i-2]
        fib_series.append(next_term)
    return fib_series

# Display Fibonacci series up to 10 terms
result = fibonacci(10)
print("Fibonacci series up to 10 terms:")
print(result)
