
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

struct joystick_state {
    int y;
    int x;
    bool b0;
    bool b1;
};

void query_joystick(struct joystick_state *state);

#ifdef __cplusplus
}
#endif
