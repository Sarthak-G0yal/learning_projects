#include <stdio.h>
#include <ctype.h>

#define MAX 50

int stack[MAX];
int top = -1;

void push(int a) // A standard push fuction of stack implementation.
{
    if (top == MAX - 1)
    {
        return;
    }
    top++;
    stack[top] = a;
    return;
}

int isoperator(char a) // Returns if a charcter is an opertor or not.
{
    switch (a)
    {
    case '+':
    case '*':
    case '/':
    case '-':
        return 1;
    default:
        return 0;
    }
}

int operation(char a, int b, int c) // Performs the operation and returns the result.
{
    switch (a)
    {
    case '+':
        return (b + c);
        break;
    case '-':
        return (b - c);
        break;
    case '*':
        return (b * c);
        break;
    case '/':
        return (b / c);
        break;
    default:
        return 0;
    }
}

char pop() // A standard pop fuction of stack implementation.
{
    if (top == -1)
    {
        return -1;
    }
    return stack[top--];
}

int main()
{
    char exp[100];
    char *e; //  Defining a Pointer.
    int key;
    printf("***Postfix Expression Evaluator***");
    while (1)
    {
        printf("\n\n<--MENU-->\n");
        printf("Enter 1 to Evaluate an Expression.\n");
        printf("Enter 2 to Exit.\n");
        printf("Your Choice - ");
        scanf("%d", &key);
        switch (key)
        {
        case 1:
        {
            printf("Enter The Expression - ");
            scanf("%s", exp);
            e = exp;
            while (*e != '\0') //  Using a pointer to access a character from expression string.
            {
                if (isalnum(*e))
                {
                    push(*e - '0');
                }
                if (isoperator(*e))
                {
                    int a = pop();
                    int b = pop();
                    int result = operation(*e, b, a);
                    push(result);
                }
                e++;
            }
            printf("Result of the Expression = %d", pop()); //  Print the result at the of code.
        }
        break;
        default:
        {
            return 0;
        };
        }
    }
}