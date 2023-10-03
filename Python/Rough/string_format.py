# str.format() : opitional method that gives user more control when displaying output.

animal = "cow"
item ="moon"
"""
print("the "+animal+" jumped over the "+item)

print("The {} jumped over the {}".format("cow","moon"))

print("The {} jumped over the {}".format(animal,item)) 

print("The {0} jumped over the {1}".format(animal,item))  # positional arguments

print("The {animal} jumped over the {item}".format(animal="cow",item="moon")) # keyword argument

"""

text = "The {} jumped over the {}"
print(text.format(animal,item))