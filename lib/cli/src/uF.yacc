%{
    #include "cli.hpp"
%}

%defines %union { char c; char *s; int n; }

%token<c> CHAR
%token<s> STR ID
%token<n> INT
%type ex

%%
syntax: | syntax ex   

ex: CHAR    { fprintf(stderr,"\tchar:%c\n",$1); }
  | STR     { fprintf(stderr, "\tstr:%s\n",$1); }
  | ID      { fprintf(stderr,  "\tid:%s\n",$1); }
  | INT     { fprintf(stderr, "\tint:%i\n",$1); }
