%{
#include <stdio.h>
#include <stdlib.h>
int i,j,flag;
%}

%%
[0-9]+ {
   i = atoi(yytext);
   flag = 1;
   for(j=2;j<i-1;j++){
      if(i % j == 0){
          printf("Not Prime");
          flag = 0;
          break;
      }
   }
   if(flag == 1){
       printf("Prime Number");
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