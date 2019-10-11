package analizadorlexico;

import static analizadorlexico.Token.*;

%%

%type Token
%class Analizador_Lex

%line
%column
%char

LETRAS = [a-zA-Z_]
DIGITO = [0-9]
WHITE=[ \t\r\n]
%{
public String lexeme;
%}

%%
{WHITE} {/*Ignore*/}
"+" {return SUMA;}
"-" {return RESTA;}
"/" {return DIV;}
"/" {return DVENT;}
"*" {return MULT;}
"^" {return POTENCIA;}
"=" {return ASSIGN;}
{LETRAS}({LETRAS}|{DIGITO})* {lexeme=yytext(); return ID;}
("(-"{DIGITO }+")")|{ DIGITO }+ {lexeme=yytext(); return INT;}
. {lexeme=yytext();return ERROR;}



