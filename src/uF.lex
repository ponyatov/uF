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
#.*                 {}                  // drop line comments
[ \t\r\n]+          {}                  // drop spaces
{d}{e}              TOKEN(f,atof,NUM)   // floating point number
{d}\.{n}+({e})?     TOKEN(f,atof,NUM)   // floating point number
{d}                 TOKEN(n,atoi,INT)   // integer number
.                   {yyerror("");}      // any undetected char
