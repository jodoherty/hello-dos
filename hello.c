#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include "myputs.h"
#include "joystick.h"

int main(void)
{
    const char *s = "Hello, World\n";
    struct joystick_state state, prev;
    myputs(s);
    query_joystick(&state);
    prev = state;
    query_joystick(&state);

    printf("%d %d %d %d -> %d %d %d %d\n", prev.x, prev.y, prev.b0,
	   prev.b1, state.x, state.y, state.b0, state.b1);

    return EXIT_SUCCESS;
}
