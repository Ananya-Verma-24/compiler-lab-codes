%{
#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include "y.tab.h"
extern int yylval;
%}

%%
"za" {printf("Za");}
"warudo" {printf("Warudo");}
"japan" {printf("Japan");}
%%

int main(){
    yylex();
    return 0;
}

int yywrap(){
}

int yyerror(char *s){
    printf("%s is error", s);
}