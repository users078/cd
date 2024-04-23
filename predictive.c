#include <stdio.h>
#include <stdlib.h> 
char lookahead;

void advance() {
    lookahead = getchar();
}

void match(char expected) {
    if (lookahead == expected) {
        advance();
    } else {
        printf("Error: Expected '%c' but found '%c'\n", expected, lookahead);
        exit(1);
    }
}

void stmt() {
    match('a');
    while (lookahead == 'a') {
        match('a');
    }
    match('b');
}

int main() {
    printf("Enter a string (e.g., 'aabb'): ");
    lookahead = getchar();
    stmt();
    if (lookahead == '\n') {
        printf("Valid string\n");
    } else {
        printf("Error: Extra characters after valid string\n");
    }
    return 0;
}
