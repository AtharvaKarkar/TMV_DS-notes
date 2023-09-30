# concise and expressive way to create a list in py.

numbers = [1,2,3,4,5,6]
square = [x**2 for x in numbers]
print(square)

# filtering out odd nums
numbers = [1,2,3,4,5,6]
odd_nums = [x for x in numbers if x % 2!=0]
print(odd_nums)

# fruits example 
fruits = ["apple","jam","sam","watermelon","berry","chukku"]
new_fruits_list= []

for x in fruits:
    if "a" in x:
        new_fruits_list.append(x)
print(new_fruits_list)

# use of in and not in operator to check presence 
my_list = [1,2,3,4,5,6]

if 3 in my_list:
    print('yes')
    
if 7 not in my_list:
    print('not present')


# upper lower strings 

words = ["apple","jam","sam","watermelon","berry","chukku"]
uppercase_words = [word.upper() for word in words]
print(uppercase_words)