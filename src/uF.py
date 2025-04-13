#!/usr/bin/env python3

import sys

## data stack
D = []

## print tracing log
log = True

## `( -- )` stop system
def bye():
    if log:
        print('bye')
    sys.exit(0)


import ply.lex as lex
import ply.yacc as yacc


import readline

## Read-Eval-Print-Loop
def REPL():
    while True:
        print(D)
        try: cmd = input('> ')
        except EOFError: break


if __name__ == '__main__':
    for src in sys.argv[1:]: print(src)
    REPL()
