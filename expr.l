%{
#include <stdio.h>
#include "y.tab.h"
void yyerror(char *);
%}

%%
[0-9]+ {printf("NUMBER"); return(NUMBER);}
"+" {printf("PLUS"); return(PLUS);}
"-" {printf("MINUS"); return(MINUS);}
[\t] ;
\n {printf("\n"); return (NEW);}
. {yyerror("Invalid Input");}
%%

int yywrap(){
    return 1;
}
