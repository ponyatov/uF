%{
    #include "uF.hpp"
%}

%defines %union { char c; char *s; int n; }

%token<c> CHAR
%token<s> STR ID
%token<n> INT
%type ex

%%
syntax: | syntax ex   

ex: CHAR    { fprintf(stderr,"char:%c\n",$1); }
  | STR     { fprintf(stderr, "str:%s\n",$1); }
  | ID      { fprintf(stderr,  "id:%s\n",$1); }
  | INT     { fprintf(stderr, "int:%i\n",$1); }
