%option noyywrap
%{
#include <stdio.h>
int con=0,ext=0,num=0,oper=0;
%}

%%
and|elif|global|or|asset|else|if|pass {con++; printf("palabra reservada identificada\n");}
[a-zA-Z]+ {ext++;printf("palabra comun identificada\n");}
[0-9]+ {num++;printf("numero identificado\n");}
[\+|\-|\/|\*] {oper++;printf("operador identificado\n");}
[\n] {printf("%d palabras reservadas, %d palabras comunes, %d numeros, %d operadores\n",con,ext,num,oper);con=0;ext=0;num=0;oper=0;} 
%%

int main(){
    yylex();
}