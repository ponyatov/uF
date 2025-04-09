%{
    #include "cli.hpp"
%}

%defines %union { char c; char *s; int n; float f; }

%token<c> CHAR
%token<s> STR ID
%token<n> INT HEX OCT BIN
%token<f> NUM
%type ex

%%
syntax: | syntax ex   

ex: CHAR    { fprintf(stderr,"\tchar:%c\n",$1); }
  | STR     { fprintf(stderr, "\tstr:%s\n",$1); }
  | ID      { fprintf(stderr,  "\tid:%s\n",$1); }
  | INT     { fprintf(stderr, "\tint:%i\n",$1); }
  | HEX     { fprintf(stderr, "\thex:%x\n",$1); }
  | OCT     { fprintf(stderr, "\toct:%o\n",$1); }
  | BIN     { fprintf(stderr, "\tbin:%i\n",$1); }
  | NUM     { fprintf(stderr, "\tnum:%e\n",$1); }
