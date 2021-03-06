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
#include "Example_posspeed.h"
#include <string.h>
#include <stdbool.h>

//Prototype Functions
interrupt void Inner_Loop( void );
//interrupt void Outer_Loop(void);
//interrupt void Alarm_ISR(void);
void EPwmConfig(void);
void PeripheralConfig(void);
void Setup(void);
//void sensorData(void);
short int sign(double);

//Constants
#define  Inner_Loop_Period         30000 //150MHz/5kHz
#define  PWM_Period			       3000	 //150MHz/25kHz*2
#define  Outer_Loop_Period		   15625 //150MHz/(100*12*8)
#define PWM_upperLimit			   0.75
#define  PI						   3.14159265359
#define threshold 				   0xF0FFFFFF

//Outer Loop Constants
#define M 					6
#define m 					0.391
#define L 					0.442
#define g 					9.81
#define c0 					1
#define a0 					0.24
#define b0 					0.883
#define z 					1
#define wn 					4.711 //sqrt(g/L)
#define g1 					0.1222
#define g2 					0.349
#define divider 			30
#define A 					595.2819
#define B 					360.707
#define C 					1182.128
#define D 					253.134
#define pinion_radius 		11e-3
#define Saturation 			4
#define Vsupply				28

// Inner Loop Constants
#define U1 0.4578
#define U2 0.05693152
#define U3 0.34286848

#define Reference_Factor 24520
#define sat_per			 0.75

#define Y0 -87160
#define Y1 34760.16
#define Y2 58397.2
#define Y3 -30453.376

#define filter_offset 2.286273062
#define filter_gain 9.383327128
#define Kt 0.116

#endif /* FUNCTIONS_H_ */
