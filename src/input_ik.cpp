/************************************************************
* Accepts keyboard inputs by default
* Modify x0y0z0 coordinates 
* Modify phi and sigma values
* 
* 
* Author: Liu Muyao
* ************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <conio.h>
#define w10_2 1
#if w10_2
#include "../include/input_ik.h"
#else
#include "Input_ik.h"
//#include "common.h"
#endif

double pi = atan(1) * 4; // pi value. 

double deg2rad(double x) {
	x = (pi / 180) * x;
	return x;
}
double rad2deg(double x) {
	x = (180 / pi) * x;
	return x;
}
void inverse_kinematics(double x, double y, double z, double *phi_o, double *sigma_o, double *theta_1_o, double *theta_2_o, double *theta_3_o, double* theta_4_o, double* theta_5_o) {

	// Desired Position of End effector in x0y0z0
	double px = x; // x0
	double py = y; // y0
	double pz = z; // z0
	double phi = *phi_o;
	double sigma = *sigma_o;
	double theta_1;
	double a1 = 371; // link 1
	double a2 = 194.75;// link 2
	double a3 = 81.75; // link 3
	double r3 = 97.77; // Distance between x3y3z3 and x4y4z4
	double a4 = 180.16; // Distance between x4y4z4 and x5y5z5
	double x4 = 172; // length of brace
	double y4 = 53.62; // height of brace from x4y4z4
	double alpha = deg2rad(17.31); // link 4 aux angle
	double alpha_2 = deg2rad(33.26); // link 3 aux angle

	phi = deg2rad(phi); // initial = 0 Flexion Angle
	sigma = deg2rad(sigma); // initial = 90 Medial Rotation Angle
	double theta_5 = pi / 2 - sigma;

	// Equations for Inverse kinematics
	double wz;
	double r;
	double delta;
	int test_mode = 1; // 1 for 5 dof. 2 for 3 dof
	if (test_mode == 1) {
		wz = pz - r3 * sin(phi + alpha_2) - x4 * sin(sigma) * sin(phi); // translate z5 to z3
		//printf("wz= ", round(wz));
		r = pow((pow(px,2) + pow(py,2)),0.5); // magnitude in(x0, y0)
		//printf("Postion Vector Mag = ", round(r));
		theta_1 = atan2(py, px); // Angle of Position vector in x0y0z0
		double ry = x4 * cos(sigma); // Displacement about z0 from x5y5 to x4y4
		double Dtheta_1 = asin(ry / r); // Change in theta_1
		theta_1 = theta_1 - Dtheta_1; // Joint_1 angular displacement
		r = ry / tan(Dtheta_1) - x4 * sin(sigma) * cos(phi);// translate x5y5 to x4y4
		//printf("PV Mag for 4 DOF= ", round(r));
		r = r - r3 * cos(phi + alpha_2); // translate x4y4 to x3y3
		//printf("PV Mag for 3 DOF= ", round(r));
		double wx = r * cos(theta_1); // not in use
		double wy = r * sin(theta_1); // not in use
	}
	else if (test_mode == 2) {
		theta_1 = atan2(py, px); // Angle of Position vector in x0y0z0
		wz = pz;
		r = pow(pow(px,2) + pow(py,2),2);
	}
	delta = pow(wz,2) + pow(r,2);  // radius ^ 2 on 3D polar plane
	double c3 = (delta - pow(a1,2) - pow(a2,2)) / (2 * a1 * a2); //cosine rule
	double s3 = sqrt(1 - pow(c3,2));  // trigo identity
	double theta_3 = atan2(s3, c3);

	double theta_2 = atan2(wz, r) - atan2((a2 * s3), (a1 + a2 * c3)); // Beta1 - Beta2

	double s2 = ((a1 + a2 * c3) * wz - a2 * s3 * r) / delta; // not in use
	double c2 = ((a1 + a2 * c3) * r + a2 * s3 * wz) / delta;  //not in use
	//theta_2 = arctan2(s2, c2); // check for delta. not in use
	double theta_4 = phi - theta_2 - theta_3; // Theta_4 to achieve flexion angle of phi

	theta_1 = rad2deg(theta_1);
	theta_2 = rad2deg(theta_2);
	theta_3 = rad2deg(theta_3);
	theta_4 = rad2deg(theta_4);
	theta_5 = rad2deg(theta_5);
	if (theta_1 && theta_2 && theta_3 && theta_4 && theta_5) {
		*theta_1_o = theta_1;
		*theta_2_o = theta_2;
		*theta_3_o = theta_3;
		*theta_4_o = theta_4;
		*theta_5_o = theta_5;
	}
	printf("Theta_1 = %.2f. Theta_2 = %.2f. Theta_3 = %.2f. Theta_4 = %.2f. Theta_5 = %.2f.\n", theta_1, theta_2, theta_3,
		theta_4, theta_5);
	printf("x = %.2f, y = %.2f, z = %.2f \n", x, y, z);

}

int takeinput_keyboard() {
	char ti;
	while (1) 
	{
		ti = _getch();
		if (ti == 'w' || ti == 's' || ti == 'a' || ti == 'd' || ti == 'q' || ti == 'e' || ti == 'z' || ti == 'x' || ti == 'r' || ti == 'f'|| ti == 'p') {
			if (ti == 'w') return 1;
			else if (ti == 's') return 2;
			else if (ti == 'a') return 3;
			else if (ti == 'd') return 4;
			else if (ti == 'q') return 5;
			else if (ti == 'e') return 6;
			else if (ti == 'z') return 7;
			else if (ti == 'x') return 8;
			else if (ti == 'r') return 9;
			else if (ti == 'f') return 10;
			else if (ti == 'p') return 11;
		}
		else printf("Invalid input. Try again. w/s for x0. a/d for y0. z/x for z0. q/e for phi. r/f for sigma\n");
	}

}

int takeinput_hardware() {
	printf("No hardware. Check settings");

	return 0;
}
/*
void input_thread() {

	char takeinput;
	int keyboard_input = 1;
	//takeinput = takeinput_keyboard();
	while (endprog) {
	if( keyboard_input) takeinput = takeinput_keyboard();
	else takeinput = takeinput_hardware();
		while (endprog) {
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
		gv.lock();
		inverse_kinematics();
		gv.unlock();
	}
	//return 0;

}*/