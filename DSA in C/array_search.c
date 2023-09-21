#include<stdio.h>
int main() {
    int arr[] = {1,2,3,4,5};
    int element_to_search = 5;
    int found = 0;  // declaring a flag variable to remember if we found the number.
    // using for loop to traverse through the array.
    for (int i=0;i<5;i++) {
        if (arr[i] == element_to_search) {
            found =1; // we found it!!
            break;
        }

    }
    if (found ==1) {
        printf("found the number %d",element_to_search);
    }
    else{
        printf("Not found %d",element_to_search);
    }
    return 0;


}