#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include "myputs.h"
#include "joystick.h"

#include "./vendor/image.h"

#include <iostream>

int main()
{
    const char *s = "Hello, World\n";
    struct joystick_state state, prev;
    myputs(s);
    query_joystick(&state);
    prev = state;
    query_joystick(&state);

    printf("%d %d %d %d -> %d %d %d %d\n", prev.x, prev.y, prev.b0,
	   prev.b1, state.x, state.y, state.b0, state.b1);

    int width, height, channels;
    unsigned char *data =
	stbi_load("test.png", &width, &height, &channels, 0);
    printf("%d %d %d\n", width, height, channels);
    stbi_image_free(data);


    std::cout << "C++ Works!" << std::endl;

    return EXIT_SUCCESS;
}
