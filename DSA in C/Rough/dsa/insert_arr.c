#include<stdio.h>
int main() {
    int nums[5] = {1,2,3,4,5};
    printf("Before insertion / updation of the array\n");
    for (int i =0;i<5;i++) {
        printf("%d\n",nums[i]);
    }
    nums[2] = 28;     // updating the values of array at the specified index location.
    printf("after updating the array \n");
    for (int i=0;i<5;i++) {
        printf("%d\n",nums[i]);
    }
     
    printf("The value at given index is: %d",nums[3]); // search an element using particular index number.
    return 0;
}