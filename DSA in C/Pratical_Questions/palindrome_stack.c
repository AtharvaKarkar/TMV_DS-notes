#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Structure to represent a stack node
struct Node {
    char data;
    struct Node* next;
};

// Function to initialize an empty stack
struct Node* createStack() {
    return NULL;
}

// Function to check if the stack is empty
int isEmpty(struct Node* root) {
    return !root;
}

// Function to push a character onto the stack
void push(struct Node** root, char data) {
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->data = data;
    newNode->next = *root;
    *root = newNode;
}

// Function to pop a character from the stack
char pop(struct Node** root) {
    if (isEmpty(*root))
        return '\0'; // indicates empty stack
    struct Node* temp = *root;
    *root = (*root)->next;
    char popped = temp->data;
    free(temp);
    return popped;
}

// Function to check if a string is a palindrome using a stack
int isPalindrome(char* str) {
    int len = strlen(str);
    struct Node* stack = createStack();

    // Push the characters onto the stack
    for (int i = 0; i < len; i++) {
        push(&stack, str[i]);
    }

    // Pop the characters from the stack and compare with the original string
    for (int i = 0; i < len; i++) {
        char popped = pop(&stack);
        if (popped != str[i]) {
            return 0; // Not a palindrome
        }
    }

    return 1; // Palindrome
}

int main() {
    char str[100];

    printf("Enter a string: ");
    scanf("%s", str);

    if (isPalindrome(str)) {
        printf("The string is a palindrome.\n");
    } else {
        printf("The string is not a palindrome.\n");
    }

    return 0;
}
