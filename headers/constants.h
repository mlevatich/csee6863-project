#ifndef CONSTANTS
#define CONSTANTS

#include <stdlib.h>
#include <math.h>

// Screen size
#define SCREEN_WIDTH 1024
#define SCREEN_HEIGHT 768

// Frame rate
#define MAX_FPS 60

// Pi
#ifndef M_PI
    #define M_PI 3.14159265358979323846
#endif // M_PI
#ifndef M_PI_2
	#define M_PI_2 (M_PI / 2)
#endif // M_PI_2

// Sprite ids
enum sprite_ids
{ ASTER, FRAGMENT, LASER, SHIP };

// Get random number in [0, 1)
static inline double getRand() { return (double) rand() / (double) RAND_MAX; }

#endif // CONSTANTS
