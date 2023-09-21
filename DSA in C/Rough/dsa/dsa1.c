// dsa array: defined as the collection of similar types of data items stored in a contiguous (one after another,without any gaps or spaces between them.) memeory location., each element of the element can be randomly accessed by using its index number.

// each element is an array is of the same data type and carries the same size that is 4 bytes.

#include <stdio.h>

int main() {
    int n = 5; // Size of the array
    int arr[10] = {10, 20, 30, 40, 50}; // Initial array elements
    int position = 2; // Index at which insertion will occur
    int value = 25; // Element to be inserted

    // Check if the position is valid
    if (position < 0 || position > n) {
        printf("Invalid position for insertion\n");
        return 0;
    }

    // Shift elements to make space for the new element
    for (int i = n; i > position; i--) {
        arr[i] = arr[i - 1];
    }

    // Insert the new element at the specified position
    arr[position] = value;

    n++; // Increase the size of the array

    // Display the updated array
    printf("Updated Array: ");
    for (int i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }

    return 0;
}
