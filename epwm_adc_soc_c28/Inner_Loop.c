/*
 * Inner_Loop.c
 *
 *  Created on: Apr 23, 2013
 *      Author: Daniel
 */
#include "Functions.h"


long double Output[3] = {0};		//U(k-1) to U(k-3)
long double Feedback[4] = {0};		//Y(k) to Y(k-3)
extern double Feedback_Store[100];
extern double Output_Store[100];
extern double Input_Store[100];
int store_Count = 0;

//extern long double Torque_Reference;

long double Output_Current = 0;		//U(k)
long double temp = 0;
float fedback = 0;

bool start_inner = 1;
float PWM = 0;
unsigned int PWM_value = 0;
unsigned long int s = 0;
extern bool start_outer;

double Torque_Reference = 0.1;

interrupt void Inner_Loop( void )
{
	int i = 0;
	unsigned long int debug = 0;
	GpioG1DataRegs.GPADAT.bit.GPIO25 = 1;
	if(start_inner == true)// || start_outer == true)
	{
		for(i=0;i<3;i++)
		{
			Output[i] = 0;
			Feedback[i] = 0;
		}
		Feedback[3] = 0;
		start_inner = false;
	}
	else if(start_inner == false)// && start_outer == false)
	{
		while(GpioG1DataRegs.GPADAT.bit.GPIO1 == 1)
		{
			if(s < 100000)
			{EPwm3Regs.CMPA.half.CMPA = 1900;}
			else if(s >= 100000 && s <= 200000)
			{EPwm3Regs.CMPA.half.CMPA = 1000;}
			else if(s > 200000)
			{s=0;}
			s++;
			Adc1Regs.ADCINTFLGCLR.bit.ADCINT1 = 1;  //Clear ADCINT1 flag reinitialize for next SOC
		    PieCtrlRegs.PIEACK.all = PIEACK_GROUP1; // Acknowledge interrupt to PIE
		}

//----------------------------------Calculate Output Matrix--------------------------//
		Output_Current = 0;

		temp = Reference_Factor*Torque_Reference;
		Output_Current += temp;

		temp = (Output[0]*U1 + Output[1]*U2 + Output[2]*U3);
		Output_Current += temp;
		Output[2] = Output[1];
		Output[1] = Output[0];

//---------------------------------Calculate Feedback Matrix------------------------//

		Feedback[3] = Feedback[2];
		Feedback[2] = Feedback[1];
		Feedback[1] = Feedback[0];
//		Feedback[0] = fedback;
		debug = Adc1Result.ADCRESULT1;
		Feedback[0] = (debug*3.3/(1<<12)) - filter_offset;
		if(Feedback[0] < 0.01 && Feedback[0] > -0.01)
		{
			Feedback[0] = 0;
		}

		Feedback[0]= Feedback[0]*filter_gain*Kt;

		temp = (Feedback[0]*Y0 + Feedback[1]*Y1 + Feedback[2]*Y2 + Feedback[3]*Y3 );
		Output_Current += temp;
//---------------------------------Update Output Matrix----------------------------------//
		if(Output_Current > Vsupply*sat_per)
		{
			Output_Current = Vsupply*sat_per;
		}
		else if( Output_Current < -Vsupply*sat_per)
		{
			Output_Current = -Vsupply*sat_per;
		}
		Output[0] = Output_Current;

//-----------------------------------PWM Saturation Control-------------------------------//
	PWM = Output_Current/Vsupply;

//--------------------------------------PWM calculation-----------------------------------//
	if(PWM > 0)
	{

		PWM = (float)(0.5+(PWM/2))*PWM_Period;
		PWM_value = (Uint16)PWM;
	}

	else if(PWM < 0)
	{
		PWM = (float)(0.5-(PWM/2))*PWM_Period;
		PWM_value = (Uint16)PWM;
	}
	EPwm3Regs.CMPA.half.CMPA = PWM_value;
	GpioG1DataRegs.GPADAT.bit.GPIO25 = 0;
	}
	Input_Store[store_Count] = Torque_Reference;
	Feedback_Store[store_Count] = Feedback[0];
	Output_Store[store_Count] = Output_Current;
	store_Count++;
	if(store_Count == 100)
	{
		EPwm3Regs.CMPA.half.CMPA = PWM_Period/2;		// 50% duty cycle
		DINT;
		for(;;)
		{

		}
	}

    Adc1Regs.ADCINTFLGCLR.bit.ADCINT1 = 1;  //Clear ADCINT1 flag reinitialize for next SOC
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP1; // Acknowledge interrupt to PIE
}

