#ifndef DM
#define DM
#if defined(__linux__) || defined(__APPLE__)
#include <fcntl.h>
#include <termios.h>
#define STDIN_FILENO 0
#elif defined(_WIN32) || defined(_WIN64)
#include <conio.h>
#endif

#include <stdlib.h>
#include "common.h"
//#include "DynamixelSDK.h"
//#include "../src/mainlib.h"

int getch();
int kbhit(void);
//unsigned int __stdcall motor_thread(void*);
int motor_thread(void*);


#endif /* DM library */