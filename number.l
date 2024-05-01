%{
    #include <stdio.h>
%}

%%
[0][b|B][0|1][0|1]* {printf("this is binary number");}
[o][0-7][0-7]* {printf("this is octal number");}
[0-9][0-9]* {printf("this is decimal number");}
[0][x|X][0-9A-F][0-9A-F]* {printf("this is hexadecimal number");}
%%

int yywrap()
{
    return 1;
}

int main(){
    printf("Enter the number: \n");
    yylex();
}