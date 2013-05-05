/*
 * Inner_Loop.c
 *
 *  Created on: Apr 23, 2013
 *      Author: Daniel
 */
#include "Functions.h"

double filter_offset= 0.555;
double filter_gain = 9.035340376;

extern double Torque_Reference; 				//Yd(k-3)T
//double Reference_Factor = 24520;
double Reference_Factor = 8.6885;

double Output[3] = {0};				//U(k-1) to U(k-3)
double Output_Factors[3] = {-0.4578,0.9431,0.5147};
//double Output_Factors[3] = {0.6053,-0.9868,-0.6211};

double Feedback[4] = {0};		//Y(k) to Y(k-3)
double Feedback_Factors[4] = {-87160,34720,58370,-30450};
//double Feedback_Factors[4] = {-34.5397,15.9710,28.4678,-18.0359};

double Output_Current = 0;	//U(k)
short unsigned int PWM_new = 0;
double Kt = 0.116;
double temp = 0;
bool start_inner = true;



Uint8 OutputCount = 0; //Output Matrix tracker
Uint8 FeedbackCount = 0;
float PWM = 0;
int PWM_value = 0;


interrupt void  Inner_Loop( void )
{
	int i,j,x = 0;
	//double Torque = 0;

	if(start_inner == true)
	{
		for(i=0;i<3;i++)
		{
			Output[i] = 0;
			Feedback[i] = 0;
		}
		Feedback[3] = 0;
		start_inner = false;
	}
	else if(start_inner == false)
	{
			//Loop whilst waiting for ADC result

		//Update Feedback Matrix
		Feedback[FeedbackCount] = (Adc1Result.ADCRESULT1*3.3/(1<<12));
		Feedback[FeedbackCount] -= (filter_offset+1.665);
		Feedback[FeedbackCount]= Feedback[FeedbackCount]*filter_gain*Kt;
		if(FeedbackCount == 3)
		{FeedbackCount = 0;}
		else
		{FeedbackCount++;}

		Output_Current = 0;
		x = FeedbackCount-1;
		//Calculate Feedback Matrix
		for(i=0;i<=3;i++)
		{
			temp = Feedback_Factors[i] * Feedback[x];
			Output_Current += temp;

			if(x == 0)
			{x = 3;}
			else
			{x--;}
		}

		//Calculate Output Matrix
		x = OutputCount - 1;
		for(j=0;j<=2;j++)
		{
			if(x<0)
			{x=0;}

			temp = Output_Factors[j] * Output[x];
			Output_Current += temp;

			if(x == 0)
			{x = 2;}
			else
			{x--;}
		}
		temp = Reference_Factor*Torque_Reference;
		Output_Current += temp;

		//Update Output Matrix
		Output[OutputCount] = Output_Current;
		if(OutputCount == 2)
		{
			OutputCount = 0;
		}
		else
		{OutputCount++;}
	}

	//PWM Saturation Control
	PWM = Output_Current/Vsupply;
	if(PWM > PWM_upperLimit)
	{
		PWM = PWM_upperLimit;
	}
	else if(PWM < -PWM_upperLimit)
	{
		PWM = -PWM_upperLimit;
	}

	//PWM calculation
	if(PWM > 0)
	{
		PWM_value = (Uint16)(0.5+(PWM/2))*PWM_Period;
	}

	else if(PWM < 0)
	{
		PWM_value = (Uint16)(0.5-(PWM/2))*PWM_Period;
	}
	EPwm3Regs.CMPA.half.CMPA = PWM_value;

    //Interrupt can only be cleared on C28 side
    Adc1Regs.ADCINTFLGCLR.bit.ADCINT1 = 1;  //Clear ADCINT1 flag reinitialize for next SOC
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP1; // Acknowledge interrupt to PIE
    return;
}

