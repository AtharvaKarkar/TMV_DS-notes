# include<stdio.h>
 

int main() {
    
    printf("Enter a number :\n");
    
    printf("The factorial of  %d is,fact()");
    return 0;

    
}

int fact() {
    int i,fact=1,num;
    scanf("%d",&num);
    for (i=1;i<=num;i++) {
        fact = fact *i;

    }
    return fact;

 }