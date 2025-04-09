#include <stdlib.h>
#include <stdio.h>

__attribute__((weak)) void loop() {
    fprintf(stderr, "\nloop: ok\n");
    exit(0);
}
