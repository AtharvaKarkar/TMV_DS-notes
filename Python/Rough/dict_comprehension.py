students = {'Alice': 85, 'Bob': 92, 'Charlie': 78, 'David': 65}
print(students['Alice'])
grade_threshold = 80

grades = {name: 'A' if score >=grade_threshold else 'B' for name,score in students.items()}
print(grades)

# converting a list into dictionary

data =[('apple',3),('banana',4),('cherry',9)]
fruits_count_list = {fruit.upper(): count for fruit , count in data}
print(fruits_count_list)