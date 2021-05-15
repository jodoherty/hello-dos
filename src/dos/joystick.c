#include <dpmi.h>
#include "../joystick.h"

static void query_joystick_axes(struct joystick_state *state)
{
    __dpmi_regs r;
    r.h.ah = 0x84;
    r.x.dx = 0x01;
    __dpmi_int(0x15, &r);
    state->x = r.x.ax;
    state->y = r.x.bx;
}

static void query_joystick_buttons(struct joystick_state *state)
{
    __dpmi_regs r;
    r.h.ah = 0x84;
    r.x.dx = 0x00;
    __dpmi_int(0x15, &r);
    state->b0 = ((~r.h.al) & 0x10) != 0;
    state->b1 = ((~r.h.al) & 0x20) != 0;
}

void query_joystick(struct joystick_state *state)
{
    query_joystick_axes(state);
    query_joystick_buttons(state);
}
