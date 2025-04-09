/// @defgroup libc libc
/// @{
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
/// @}

/// @defgroup main main
/// @{
extern int main(int argc, char *argv[]);
extern void arg(char argc, char *argv);
/// @}

/// @defgroup skelex skelex
/// @{

extern int yylex();              ///< lexer
extern int yylineno;             ///< current line
extern char *yytext;             ///< current lexeme value
extern char *yyfile;             ///< current file name
extern FILE *yyin;               ///< current file handler
extern int yyparse();            ///< parser
extern void yyerror(char *msg);  ///< error callback
#include "uF.yacc.hpp"
#define TOKEN(Y, C, X)        \
    {                         \
        yylval.Y = C(yytext); \
        return X;             \
    }

/// @}
