#include <stdio.h>
#include "tick_ms.h"

int main(int argc, char const *argv[])
{
    uint32_t t;

    t = tick_ms();

    while (1) {
        if (tick_ms() - t > 1000) {
            t = tick_ms();
            printf("tick per second\n");
        }
    }

    return 0;
}