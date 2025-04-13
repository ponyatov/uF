#!/usr/bin/env python3

import sys

## print tracing log
log = True

## `( -- )` stop system
def bye():
    if log:
        print('bye')
    sys.exit(0)

import readline

## Read-Eval-Print-Loop
def REPL():
    while True:
        try: cmd = input('> ')
        except EOFError: bye()

        print(f'cmd: [{cmd}]\n')


if __name__ == '__main__':
    for src in sys.argv[1:]:

    REPL()
