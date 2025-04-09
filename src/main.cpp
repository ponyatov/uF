#include <stdio.h>
#include <stdlib.h>

__attribute__((weak)) void arg(char argc, char *argv) {
    fprintf(stderr, "argv[%i] = <%s>\n", argc, argv);
}
