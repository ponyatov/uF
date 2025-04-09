#include <stdlib.h>
#include <stdio.h>

__attribute__((weak)) void loop() {
    fprintf(stderr, "loop: ok\n");
    exit(0);
}
