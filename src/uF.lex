%{
    #include "uF.hpp"
    char *yyfile = nullptr;
%}

%option yylineno noyywrap

s [+\-]
n [0-9]

%%
#.*         {}              // drop line comments
[ \t\r\n]+  {}              // drop spaces
{s}{n}+     TOKEN(Int,INT)  // integer number
.           {yyerror("");}  // any undetected char
