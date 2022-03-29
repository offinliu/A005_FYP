/************************************************************
* 
*
*
* Author: Liu Muyao
* ************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <thread>
#include <mutex>
#include <math.h>
#include <Windows.h>
//#include <pthreads>
#define w10_2 0
#if w10_2
#include "../include/mainlib.h"
//#include "../include/input_ik.h"
//#include "../include/Dm.h"
#else 
#include "Dm.h"
#include "input_ik.h"
#include "common.h"
#endif
#if defined(__linux__) || defined(__APPLE__)
#include <fcntl.h>
#include <termios.h>
#define STDIN_FILENO 0
#elif defined(_WIN32) || defined(_WIN64)
#include <conio.h>
#endif
using namespace std;
std::mutex gv;
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
	alpha_2 = deg2rad(33.26); // link 3 aux angle
	pi = atan(1) * 4; // pi value. 
	endprog = 1;
	x = 671.0;
	y = 0.0;
	z = 199.0;
	phi = 0.0;
	sigma = 90.0;
	char dum;
	int cur_time;
	int check_ik;
	int check_dm;
	//create threads...
	endprog = 1;
	printf("Initial position. strap arm brace to forearm.Press ENTER to continue\n");
	dum=getchar();
	gv.lock();
	gv.unlock();
	std::thread input_ik(input_thread);
	std::thread Dm(motor_thread);
	cur_time = time(NULL);
	while (endprog)
	{
		printf("Time: %ld", (time(NULL) - cur_time));
		Sleep(1000);
	}
	input_ik.join();
	Dm.join();

	return 0;
}