%{
#include <stdio.h>
#include <stdlib.h>
%}

%%

[0-9]+          { yylval = atoi(yytext); return NUMBER; }
[ \t\n]         /* Skip whitespace */
"+"             { return ADD; }
"-"             { return SUB; }
"*"             { return MUL; }
"/"             { return DIV; }
"="             { return EQ; }
.               { return yytext[0]; }

%%

int yylex();

int main() {
    int token;
    int result = 0;
    
    printf("Simple Calculator\n");
    printf("Enter an expression (e.g., 2+3=): ");
    
    while ((token = yylex())) {
        switch (token) {
            case NUMBER:
                result = yylval;
                break;
            case ADD:
                result += yylex();
                break;
            case SUB:
                result -= yylex();
                break;
            case MUL:
                result *= yylex();
                break;
            case DIV:
                result /= yylex();
                break;
            case EQ:
                printf("Result: %d\n", result);
                printf("Enter another expression (e.g., 2+3=) or press Ctrl+D to exit: ");
                result = 0;
                break;
            default:
                printf("Invalid input\n");
                break;
        }
    }
    
    return 0;
}
