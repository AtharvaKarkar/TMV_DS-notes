from car import Car
car_1 = Car("Fortuner","Toyota",2022,"Black")
car_2 = Car("Endure","Ford",2021,"White")


print(car_1.make)
print(car_1.model)
print(car_1.year)
print(car_1.color)

print(car_2.make)
print(car_2.model)
print(car_2.year)
print(car_2.color)


car_1.drive()
car_1.stop()
car_2.drive()
car_2.stop()