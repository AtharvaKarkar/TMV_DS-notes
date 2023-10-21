# Define two sets
set1 = {1, 2, 3, 4, 5}
set2 = {4, 5, 6, 7, 8}

# Find the intersection of the two sets
intersection_set = set1.intersection(set2)

# Remove the common elements from the first set
set1 = set1 - intersection_set

# Print the modified set1
print("Set1 after removing common elements:", set1)
