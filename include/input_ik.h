#ifndef INPUT_IK
#define INPUT_IK
#include <stdlib.h>
#include <cmath>
//#include "common.h"
//#include "../src/mainlib.h"

//#define keyboard_input 1 //defualt = 1. keyboard inputs
//#define hardware_input !keyboard

double deg2rad(double x);
double rad2deg(double x);
int takeinput_keyboard();
int takeinput_hardware();
void inverse_kinematics(double x, double y, double z, double* phi_o, double* sigma_o, double* theta_1_o, double* theta_2_o, double* theta_3_o, double* theta_4_o, double* theta_5_o);
//void input_thread();

#endif /* input_ik library*/