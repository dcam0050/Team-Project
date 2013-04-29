/*
 * Functions.h
 *
 *  Created on: Apr 23, 2013
 *      Author: Daniel
 */

#ifndef FUNCTIONS_H_
#define FUNCTIONS_H_

//Include
#include "DSP28x_Project.h"       // Device Headerfile and Examples Include File
#include <string.h>
#include <stdbool.h>

//Prototype Functions
interrupt void inner_loop( void );
void ConfigAdc1( void );
void ConfigEpwm1( void );
void InitEPwm3Example(void);

//Constants
#define  Inner_Loop_Period         30000 //150MHz/5kHz
#define  PWM_Period			       3000	 //150MHz/24kHz



#endif /* FUNCTIONS_H_ */