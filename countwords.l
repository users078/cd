%{
#include <stdio.h>
#include <stdlib.h>
int wordcount = 0;
%}

%%
[a-zA-Z]+ {
    wordcount++;
    printf("Wordcount %d",wordcount);
}
%%

int yywrap(){
return 1;
}


int main(){
   yylex();
   return 0;
}