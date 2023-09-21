#include <stdio.h>

int main() {
    int arr[] = {1, 2, 3, 4, 5};
    int size = sizeof(arr) / sizeof(arr[0]);
    int position_to_delete = 2; // Position to delete (0-based index)

    // Check if the position to delete is valid
    if (position_to_delete >= 0 && position_to_delete < size) {
        // Shift elements to the left starting from the position to delete
        for (int i = position_to_delete; i < size - 1; i++) {
            arr[i] = arr[i + 1];
        }

        // Decrease the size of the array (optional)
        size--;

        // Print the updated array
        for (int i = 0; i < size; i++) {
            printf("%d ", arr[i]);
        }
        printf("\n");
    } else {
        printf("Invalid position to delete\n");
    }

    return 0;
}
