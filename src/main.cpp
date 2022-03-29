/************************************************************
* 
*
*
* Author: Liu Muyao
* ************************************************************/

#include <stdio.h>
#include <thread>
#include <stdlib.h>
#include <algorithm>
#include <iostream>
#include <Windows.h>
#include <process.h>
#include <math.h>
#define w10_2 0
#if w10_2
#include "../include/common.h"
#include "../include/input_ik.h"
#include "../include/Dm.h"
#else 
#include "Dm.h"
#include "input_ik.h"
#include "common.h"
#endif

int main(int argc, char* argv[]) {
	// initialize values to home positon in mm and deg
	a1 = 371; // link 1
	a2 = 194.75;// link 2
	a3 = 81.75; // link 3
	r3 = 97.77; // Distance between x3y3z3 and x4y4z4
	a4 = 180.16; // Distance between x4y4z4 and x5y5z5
	x4 = 172; // length of brace
	y4 = 53.62; // height of brace from x4y4z4
	alpha = deg2rad(17.31); // link 4 aux angle
	beta = deg2rad(33.26); // link 3 aux angle
	pi = atan(1) * 4; // pi value. 
	endprog = 1;
	x = 671.0;
	y = 0.0;
	z = 199.0;
	phi = 0.0;
	sigma = 90.0;


	//create threads...
	endprog = 1;
	printf("Initial position. strap arm brace to forearm.Press ENTER to continue\n");
	_getch();
	HANDLE ikhandle;
	ikhandle = (HANDLE)_beginthreadex(0, 0, &input_thread, 0, 0, 0);
	HANDLE dmhandle;
	//dmhandle = (HANDLE)_beginthreadex(0, 0, &motor_thread, 0, 0, 0);

	return 0;
}