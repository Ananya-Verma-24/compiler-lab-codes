%{
#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
%}

%token Za Warudo Japan
%start rhyme

%%

rhyme: sound place '\n'
{
    printf("String is valid \n");

}

sound: Za Warudo;
place: Japan;
%%
