

class Circle:
    def __init__(self, radius):
        self.radius = radius

    def getArea(self):
        return 3.14 * self.radius * self.radius

    def getCircumference(self):
        return 2 * 3.14 * self.radius

# Creating an instance of the Circle class
circle = Circle(5)

# Printing the area and circumference of the circle
print("Area of the circle:", circle.getArea())
print("Circumference of the circle:", circle.getCircumference())
