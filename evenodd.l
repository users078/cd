%{
#include <stdio.h>
#include <stdlib.h>
int i;
%}

%%
[0-9]+ {
    i = atoi(yytext);
    if (i % 2 == 0){
        printf("Number is even");
    }else{
        printf("Number is odd");
    }
}
%%

int yywrap(){
return 1;
}

int main(){
    yylex();
    return 0;
}