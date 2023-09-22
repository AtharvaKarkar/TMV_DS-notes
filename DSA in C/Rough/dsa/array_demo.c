#include<stdio.h>
int main() {
    // array : linear ds , stores element of similar data type, elements are seprated by comma, each element has it's own unique index address, and it's also been accessed by index address.
    int arr[5] = {1,2,3,4,5};

    for (int i=0;i<5;i++) {
        printf(" array elements are: %d\n",arr[i]);
    }

    // 1 Traverse array element:
    char arr_char[] = "HelloCprogramming";
    for (int i=0;i<arr_char[i] !=0;i++) {
        printf("All the characters presnet in this char array is: %c\n",arr_char[i]);

    }
    printf("Array element at index number 5 is: %c\n",arr_char[5]);  // accessing the array element at a specific position unsing it's  index number.

    // 2. Update : 
   int arr1[5] = {10, 20, 30, 40, 50};

    // Update the element at index 2 (third element) to a new value
    arr1[2] = 35;

    // Print the updated array
    printf("Updated array: ");
    for (int i = 0; i < 5; i++) {
        printf("%d\n ", arr1[i]);

    }
    printf("Array element at index 5 is :%d",arr1[3]);



    // 3. copy one array element into another.
    int original_array[] = {2,6,3,45,10};
    for (int r = 0;r<5;r++) {
        printf("The content of original array is: %d\n",original_array[r]);
    }
    int copy[5];
     printf("content of original array is being copied in copy array\n");
    for (int i=0;i<5;i++) {
       
        copy[i] = original_array[i];
        printf("Content of the copied array is : %d\n",copy[i]);
    }
    return 0;
    
}