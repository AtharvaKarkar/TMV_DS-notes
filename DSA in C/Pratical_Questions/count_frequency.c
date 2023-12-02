#include <stdio.h>

int main() {
    
    int arr[100]; 
    int n, i, j, count;

    printf("Count frequency of each element in the array\n");
    printf("Input the number of elements in the array: ");
    scanf("%d", &n);

    printf("Input %d elements in the array:\n", n);

    for (i = 0; i < n; i++) {
        printf("Element %d: ", i);
        scanf("%d", &arr[i]); // Corrected the usage of scanf
    }

    printf("\nThe frequency of all elements in the array is:\n");

    for (i = 0; i < n; i++) {
        // Skip if the element is already counted 
        if (arr[i] != -1) {
            count = 1; // Reset counter for each new element.

            for (j = i + 1; j < n; j++) {
                if (arr[i] == arr[j]) {
                    count++;
                    arr[j] = -1;
                }
            }

            printf("%d occurs %d times\n", arr[i], count);
        }
    }

    return 0;
}
