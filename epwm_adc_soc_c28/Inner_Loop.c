/*
 * Inner_Loop.c
 *
 *  Created on: Apr 23, 2013
 *      Author: Daniel
 */
#include "Functions.h"

float filter_offset= 0.555;
float filter_gain = 9.035340376;

float Reference = 0; 				//Yd(k-3)T
float Reference_Factor = 24520;

float Output[3] = {0};				//U(k-1) to U(k-3)
float Output_Factors[3] = {-0.4578,0.9431,0.5147};

float Feedback[4] = {0};		//Y(k) to Y(k-3)
float Feedback_Factors[4] = {87160,34720,58370,-30450};

float Output_Current = 0;	//U(k)
short unsigned int PWM_new = 0;
float Kt = 0.116;

//unsigned long int totalDelay = 0;


Uint16 OutputCount = 0; //Output Matrix tracker
Uint16 FeedbackCount = 0; //Feedback Matrix Tracker

//bool toggle = 0;


interrupt void  inner_loop( void )
{
	int i = 0;
	int j = 0;
	int x = 0;
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
		Output_Current += Feedback_Factors[i] * Feedback[x];

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

		Output_Current += Output_Factors[i] * Output[x];

		if(x == 0)
		{x = 2;}
		else
		{x--;}
	}

	Output_Current += Reference_Factor*Reference;

	//Update Output Matrix
	Output[OutputCount] = Output_Current;
	if(OutputCount == 2)
	{
		OutputCount = 0;
	}
	else
	{OutputCount++;}

//    toggle = ~toggle;
//    GpioG1DataRegs.GPCDAT.bit.GPIO70 = toggle;

    //Interrupt can only be cleared on C28 side
    Adc1Regs.ADCINTFLGCLR.bit.ADCINT1 = 1;  //Clear ADCINT1 flag reinitialize for next SOC
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP1; // Acknowledge interrupt to PIE
    return;
}

