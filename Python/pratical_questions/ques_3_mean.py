# Function to calculate the mean of a list of numbers
def calculate_mean(numbers):
    return sum(numbers) / len(numbers)

# Function to calculate the standard deviation of a list of numbers
def calculate_std_dev(numbers, mean):
    variance = sum((x - mean) ** 2 for x in numbers) / len(numbers)
    return variance ** 0.5

# Given list of numbers
numbers = [2, 4, 4, 4, 5, 5, 7, 9]

# Calculate the mean of the list
mean = calculate_mean(numbers)

# Calculate the standard deviation of the list
std_dev = calculate_std_dev(numbers, mean)

# Print the mean and standard deviation
print(f"The mean of the numbers is: {mean}")
print(f"The standard deviation of the numbers is: {std_dev}")
