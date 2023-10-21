##Write a python code to find LCM and GCM of a given list

def find_gcd(x,y):
    while y:
        x,y = y,x%y
    return x

def find_lcm(x,y):
    return x * y  // find_gcd(x,y)



nums = list(map(int, input("Enter space-separated numbers: ").split())) 

lcm_result = nums[0]
gcd_result = nums[0]

for num in nums[1:]:
    lcm_result = find_lcm(lcm_result, num)
    gcd_result = find_gcd(gcd_result, num)

print(f"The LCM of the numbers is: {lcm_result}")
print(f"The GCD of the numbers is: {gcd_result}")
    

   

# split() is used to split the string entered by user into a list of substring based on space.
 
 