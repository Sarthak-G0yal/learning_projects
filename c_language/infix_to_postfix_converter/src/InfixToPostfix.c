#include <stdio.h>
#include <ctype.h>
#define MAX 50

int top = -1;
int OpStack[MAX]; // Operator Stack

int push(int ele) // push in operator stack
{
    if (top == MAX - 1)
        return -1;
    else
    {
        top++;
        OpStack[top] = ele;
        return top;
    }
}

int pop() // pop from operator stack
{
    if (top == -1)
        return -1;
    else
    {
        return OpStack[top--];
    }
}

int priority(char c) // returns priority value
{
    switch (c)
    {
    case '+':
    case '-':
        return 1;
    case '*':
    case '/':
        return 2;
    default:
        return 0;
    }
}

int main()
{
    char exp[MAX]; // stores the expression
    char *e;
    char key;
    while (1)
    {
        top = -1; // Reset operator stack
        printf("Enter the infix Expression - ");
        scanf("%s", exp);
        e = exp; // pointes towards first element of array
        while (*e != '\0')
        {
            if (isalnum(*e))
            {
                printf("%c", *e); // print the operands as they come
            }
            else if (*e == '(')
            {
                push(*e);
            }
            else if (*e == ')')
            {
                while (OpStack[top] != '(')
                {
                    printf("%c", pop());
                }
                pop();
            }
            else
            {
                while (top != -1 && priority(OpStack[top]) >= priority(*e)) // logic used on operators
                {
                    printf("%c", pop());
                }
                push(*e);
            }
            e++;
        }
        while (top != -1)
        {
            printf("%c", pop()); // pop all the element in opertor stack at the end
        }

        printf("\n\nPress Y/n to Continue or Exit-- ");
        scanf(" %c", &key);
        if (key == 'n' || key == 'N')
        {
            return 0;
        }
    }
}
