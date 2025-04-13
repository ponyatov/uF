#include <stdio.h>
#include <stdlib.h>
#include "main.hpp"

__attribute__((weak)) void arg(char argc, char *argv) {
    fprintf(stderr, "argv[%i] = <%s>\n", argc, argv);
}

__attribute__((weak)) void setup() {  //
    fprintf(stderr, "setup: ok\n");
}

__attribute__((weak)) void loop() {
    fprintf(stderr, "loop: ok\n");
    exit(0);
}

__attribute__((weak)) int main() {  //
    setup();
    for (;;) loop();
    return 0;
}
