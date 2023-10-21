// fibonacci series 
#include<stdio.h>
#include<conio.h>

int main() {
    int num,i,first=0,second=1,next;
    printf("Enter limit: \n");
    scanf("%d",&num);
    printf("Fibonacci series : %d %d ",first , second);
    next = first+second;
    for(i=2;i<=num;i++) {
        printf("%d ",next);
        first = second;
        second = next;
        next = first + second;
    }
    return  0;
}