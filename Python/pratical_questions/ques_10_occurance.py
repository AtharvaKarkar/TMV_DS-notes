## Write a program to iterate a given list and count the occurrence of each element and create a dictionary to show the count of each element.

# Given list
my_list = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]

# Creating an empty dictionary
count_dict = {}

# Iterating through the list and counting occurrences
for item in my_list:
    if item in count_dict:
        count_dict[item] += 1
    else:
        count_dict[item] = 1

# Displaying the dictionary with counts
print("Count of each element in the list:")
print(count_dict)
