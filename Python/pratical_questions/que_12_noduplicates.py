# Given dictionary
my_dict = {
    "a": 1,
    "b": 2,
    "c": 3,
    "d": 2,
    "e": 4,
    "f": 3
}

print(f" dictionary which containes duplicate values : {my_dict}")

# Creating a set to automatically remove duplicates
values_list = list(set(my_dict.values()))

# Printing the list of values without duplicates
print("List of values without duplicates:", values_list)
