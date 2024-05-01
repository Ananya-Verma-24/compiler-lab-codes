%{
    #include <stdio.h>
    int lines=0;
    int spaces=0;
    int words=0;
%}

%%
[\n] {lines++;}
[\t] {spaces+=4;}
[" "] {spaces++;}
"EXIT" return 0;
[a-zA-z0-9]* {words++;}
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter your string \n");
    yylex();
    printf("Words: %d\n", words);
    printf("Lines: %d\n", lines);
    printf("Spaces: %d\n", spaces);
}