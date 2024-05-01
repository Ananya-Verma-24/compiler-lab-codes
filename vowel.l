%{
    #include <stdio.h>
    int vow=0;
    int cons=0;
%}

%%
[aeiouAEIOU] {vow++;}
[a-zA-Z] {cons++;}
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter your string...press ^d to exit \n");
    yylex();
    printf("Vowels: %d\n", vow);
    printf("Consonants: %d\n", cons);
}