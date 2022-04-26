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
#include <math.h>
#include <Windows.h>
#define w10_2 0
#if w10_2
#include "../include/mainlib.h"
//#include "../include/input_ik.h"
//#include "../include/Dm.h"
#else 
#include "Dm.h"
#include "Input_ik.h"
//#include "common.h"
#endif
#if defined(__linux__) || defined(__APPLE__)
#include <fcntl.h>
#include <termios.h>
#define STDIN_FILENO 0
#elif defined(_WIN32) || defined(_WIN64)
#include <conio.h>
#endif
#include <mutex>
using namespace std;
std::mutex gv;
double x;
double y;
double z;
double phi;
double sigma;
double theta_1;
double theta_2;
double theta_3;
double theta_4;
double theta_5;
int endprog;

int input_thread() {
	char takeinput;
	int keyboard_input = 1;
	//takeinput = takeinput_keyboard();
	while (endprog) {
		if (keyboard_input) takeinput = takeinput_keyboard();
		else takeinput = takeinput_hardware();
		while (endprog && takeinput) {
			gv.lock();
			if (takeinput == 1) x += 5;

			else if (takeinput == 2) x -= 5;

			else if (takeinput == 3) y += 5;

			else if (takeinput == 4) y -= 5;

			else if (takeinput == 5) z += 5;

			else if (takeinput == 6) z -= 5;

			else if (takeinput == 7) phi += 5;

			else if (takeinput == 8) phi -= 5;

			else if (takeinput == 9) sigma += 5;

			else if (takeinput == 10) sigma -= 5;

			else if (takeinput == 99) endprog = 0;
			gv.unlock();
		}
		takeinput = 0;
		gv.lock();
		inverse_kinematics( x,  y,  z, &phi,&sigma, &theta_1, &theta_2, &theta_3, &theta_4, &theta_5);
		gv.unlock();
	}

	return 0;
}

int Dm_thread() {
	int return_value;
	int count = 5;
	return_value = 1;

	while (return_value && count)
	{
		printf("Starting Dynamixel motor thread.\n");
		return_value = dm_main(&theta_4,&theta_5, &endprog);
		count = count - return_value;
	}
	if (count == 0) printf("Dynamixel Thread timeout.\n");
	printf("Motor thread ended.");
	return 0;
}

int HEBI_thread() {

	return 0;
}
int main(int argc, char* argv[]) {
	// initialize values to home positon in mm and deg
	endprog = 1;
	x = 671.0;
	y = 0.0;
	z = 199.0;
	phi = 0.0;
	sigma = 90.0;
	char dum;
	long int start_time;
	long int cur_time;
	//create threads...
	endprog = 1;
	printf("Initial position. strap arm brace to forearm.Press ENTER to continue\n");
	dum=getchar();
	gv.lock();
	gv.unlock();
	std::thread input_ik(input_thread);
	std::thread Dm(Dm_thread);
	std::thread HEBI(HEBI_thread);
	start_time = time(NULL);
	while (endprog)
	{
		cur_time = time(NULL) - start_time;
		printf("Time: %ld seconds", cur_time);
		Sleep(1000);
	}
	input_ik.join();
	Dm.join();
	HEBI.join();

	return 0;
}