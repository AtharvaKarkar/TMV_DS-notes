# recursion: function that calls itself to solve a problem.
# recursion is like a puzzel where you try to solve big problem by breaking it into smaller and smaller, similar problems.

def countdown(n) :
    if n==1:    # base case
        print(1)
        return
    # else part of this function plays the role of recursion.
    else: # else block is our recursive condition.
        print(n)
        countdown(n-1) # recursive case countdown from (n-1).
        
countdown(5)

# a recursive function is one that calls itself, either directly or indirectly,to solve a problem by breaking it down into smaller instances of the same prob.