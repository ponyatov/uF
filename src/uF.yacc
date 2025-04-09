%{
    #include "uF.hpp"
%}

%defines %union { Object *o; }

%token<o> INT
%type<o> ex

%%
syntax: | syntax ex   

ex: INT { $1->dump(); }
