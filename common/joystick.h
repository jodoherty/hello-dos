#include <stdbool.h>

struct joystick_state {
    int y;
    int x;
    bool b0;
    bool b1;
};

void query_joystick(struct joystick_state *state);
