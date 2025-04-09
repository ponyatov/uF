#include <stdio.h>

__attribute__((weak)) void setup() {  //
    fprintf(stderr, "\nsetup: ok\n");
}
