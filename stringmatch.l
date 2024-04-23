%{
#include <stdio.h>
%}

%%
"Sidharth" {printf("String matched",yytext);}
. {printf("String did not match")}
%%

int yywrap(){
    return 1;
}

int main(){
    printf("Enter your string");
    yylex();
    return 0;
}