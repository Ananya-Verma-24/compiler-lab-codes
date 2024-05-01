%{
#include <stdio.h>
void yyerror(char *);
%}

%token NUMBER PLUS MINUS NEW

%%

program:
    program NEW expr
    | expr
    |
    ;

expr:
    NUMBER PLUS NUMBER
    | NUMBER MINUS NUMBER
    | NUMBER PLUS expr
    | NUMBER MINUS expr
    ;

%%

void yyerror(char *s){
    fprintf(stderr, "%s\n", s);

}

int main(){
    yyparse();
    return 0;
}