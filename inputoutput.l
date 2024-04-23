%{
#include <stdio.h>
%}

%%

"if"|"else"|"while" {printf("%s is the keyword",yytext);}
[0-9]+ {printf("%s is the Number",yytext);}
[a-zA-Z]+ {printf("%s is the letter",yytext);}
. {ECHO;}

%%


int yywrap(){
   return 1;
}

int main(){
    printf("Enter your string");
    yylex();
    return 0;
}
