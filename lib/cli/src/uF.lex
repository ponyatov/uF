%{
    #include "cli.hpp"
    char *yyfile = nullptr;
%}

%option yylineno noyywrap

s [+\-]
n [0-9]
d {s}?{n}+
e [eE]{d}+

%%
#.*                     {}                  // drop line comments
[ \t\r\n]+              {}                  // drop spaces
{d}\.{n}+({e})?         TOKEN(f,atof,NUM)   // /
{d}[eE]{d}              TOKEN(f,atof,NUM)   // \ floating point
0x[0-9a-fA-F]+          TOKEN(n, hex,HEX)   // \ integer number
0o[0-7]+                TOKEN(n, oct,OCT)
0b[01]+                 TOKEN(n, bin,BIN)
{d}                     TOKEN(n,atoi,INT)   // /
[_a-zA-Z][_a-zA-Z0-9]*  TOKEN(s,,ID)
    /* .                       TOKEN(c,*,CHAR) */
.                       {yyerror("");}      // any undetected char
