# arbitary arguments allows us to pass a varying number of values during a function call.
# by using * (asterik ) before the parameter name to denote this kind of argument.
def find_sum(*numbers):
    result = 0
    for num in numbers:
        result = result + num
    print("Sum=",result)
        
# function call with 3 arguments
find_sum(1,2,3)
# function call with 2 arguments 
find_sum(53,3)
