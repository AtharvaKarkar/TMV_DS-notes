#include <stdio.h>
int main()
{
    // declaring a array in c
    int arr_int[5] = {2, 3, 4, 5, 1};
    // looping throgh an array.
    for (int i = 0; i < 5; i++)
    {
        printf("%d\n", arr_int[i]);
    }
    // accessing an array element : using it's index value
    printf("The value at given index is:  %d \n", arr_int[2]);

    // Basic array operations

    // 1. Traverse : print all the array elements one by one.
    char arr_char[] = "HelloCprogramming";
    printf("The elements in this character array are :\n");
    for (int i = 0; i < arr_char[i] != 0; i++)
    {
        printf("%c\n", arr_char[i]);
    }
    printf("The array element at this index is :%c", arr_char[9]); // accessing the array element at a given index.

    // 2. Update :

    int arr[4], j;
    printf("Array before insertion \n");
    for (j = 0; j < 3; j++)
    {
        printf("arr[%d] = %d\n", j, arr[j]);
        printf("Inserting an element\n");
        printf("The array elements after insertion are: \n");
        for (j = 0; j < 3; j++)
        {
            arr[j] = j + 2;
            printf("arr[%d] = %d\n",j,arr[j]);
            
        }
    }

    return 0;
}