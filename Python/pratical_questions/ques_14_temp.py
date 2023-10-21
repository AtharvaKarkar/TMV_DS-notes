class Temperature:
    def convertFahrenheit(self, celsius):
        return (celsius * 9/5) + 32

    def convertCelsius(self, fahrenheit):
        return (fahrenheit - 32) * 5/9

# Creating an instance of the Temperature class
temp = Temperature()

# Converting Celsius to Fahrenheit
celsius_value = 25
print(f"{celsius_value} degrees Celsius is equal to {temp.convertFahrenheit(celsius_value)} degrees Fahrenheit.")

# Converting Fahrenheit to Celsius
fahrenheit_value = 77
print(f"{fahrenheit_value} degrees Fahrenheit is equal to {temp.convertCelsius(fahrenheit_value)} degrees Celsius.")
