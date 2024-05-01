%{
    #include <stdio.h>
%}

%%
"if" {printf("IF");}
"else" {printf("ELSE");}
"then" {printf("THEN");}
"while" {printf("WHILE");}
"<"|">" {printf("RELOP");}
"("|")" {printf("BRACKET");}
[a-zA-Z][a-z|0-9]* {printf("IDENTIFIER");}
[0-9]* {printf("NUM");}
%%

int yywrap()
{
    return 1;
}

int main(){
    printf("Enter the string: \n");
    yylex();
}