%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
"+"[0-9]+ {printf("%s is a positive number", yytext);}
"-"[0-9]+ {printf("%s is a negative number", yytext);}
[0-9]+ {printf("%s is a positive number", yytext);}
. {ECHO;}
%%

int yywrap(){
    return 1;
}

int main(){
    printf("Enter the number");
    yylex();
}