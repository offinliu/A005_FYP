#ifndef INPUT_IK
#define INPUT_IK
#include <stdlib.h>
#include "common.h"
//#include "../src/mainlib.h"

//#define keyboard_input 1 //defualt = 1. keyboard inputs
//#define hardware_input !keyboard

double deg2rad(double x);
double rad2deg(double x);
int takeinput_keyboard();
int takeinput_hardware();
void input_thread(void*);

#endif /* input_ik library*/