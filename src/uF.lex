%{
    #include "uF.hpp"
    char *yyfile = nullptr;
%}

%option yylineno noyywrap

s [+\-]
n [0-9]
d {s}?{n}+
e [eE]{d}

%%
#.*                     {}                  // drop line comments
[ \t\r\n]+              {}                  // drop spaces
{d}                     TOKEN(n,atoi,INT)   // integer number
[_a-zA-Z][_a-zA-Z0-9]*  TOKEN(s,,ID)
.                       {yyerror("");}      // any undetected char
