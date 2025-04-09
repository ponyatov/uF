%{
    #include "uF.hpp"
%}

%defines %union { char c; char *s; int n; float f; }

%token<c> CHAR
%token<s> STR
%token<n> INT
%token<f> NUM
%type ex

%%
syntax: | syntax ex   

ex: INT { fprintf(stderr,"int:%i\n",$1); }
  | NUM { fprintf(stderr,"num:%f\n",$1); }
