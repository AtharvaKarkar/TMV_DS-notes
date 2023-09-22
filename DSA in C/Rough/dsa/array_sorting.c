#include<stdio.h>
int main() {
    int arr1[] = {1,2,4};
    int arr2[] = {3,6,8};

    int merged[6]; 
    for (int i=0;i<3;i++) {
        merged[i] = arr1[i];
        merged[i+3] = arr2[i];  // we add 3 to 'i' (which ranges from 0 to 2) to get the correct index in the 'merged' array

    }
    for (int a=0;a<6;a++) {
        printf("The elements of merged array is: %d\n",merged[a]);
    }
    
    int count =sizeof(merged);
    printf("The size of merged array is :%d",count);

    return 0;
}