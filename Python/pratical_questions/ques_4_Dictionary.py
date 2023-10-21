# Function to add an element to the dictionary
def add_element(dictionary, key, value):
    dictionary[key] = value

# Function to delete an element from the dictionary
def delete_element(dictionary, key):
    if key in dictionary:
        del dictionary[key]
        print(f"Element with key '{key}' has been deleted.")
    else:
        print(f"Element with key '{key}' does not exist.")

# Initializing an empty dictionary
my_dictionary = {}

# Adding elements to the dictionary
add_element(my_dictionary, 'name', 'Alice')
add_element(my_dictionary, 'age', 25)
add_element(my_dictionary, 'city', 'London')

# Printing the current dictionary
print("Current dictionary:", my_dictionary)

# Deleting an element from the dictionary
delete_element(my_dictionary, 'age')

# Printing the updated dictionary
print("Updated dictionary:", my_dictionary)
