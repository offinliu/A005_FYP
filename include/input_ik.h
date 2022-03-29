#ifndef INPUT_IK
#define INPUT_IK
#include <stdio.h>
#include <algorithm>
#include <iostream>
#include <Windows.h>
#include <process.h>
#include <math.h>
#include "input_ik.h"
#include "common.h"
//#include "../src/mainlib.h"

//#define keyboard_input 1 //defualt = 1. keyboard inputs
//#define hardware_input !keyboard

double deg2rad(double x);
double rad2deg(double x);
int takeinput_keyboard();
int takeinput_hardware();
unsigned int __stdcall input_thread(void*);

#endif /* input_ik library*/