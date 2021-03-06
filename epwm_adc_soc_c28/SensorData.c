/*
 * SensorData.c
 *
 *  Created on: May 4, 2013
 *      Author: Daniel
 */
#include "Functions.h"
short int sign(double x);

#define absOffset  0.72444384;
#define SAMP_PER   0.02

extern double tita,titadot,x,xdot,theta,tita_neg;
extern double tita_hist[3];
extern double x_hist[3];
int rev, counts = 0;
double tita_cont,tita_prev = 0;

void sensorData(void)
{
	long int temp = 0;

	EPwm2Regs.ETCLR.bit.INT = 1;							//Clear Interrupt in timer
	//Read data from absolute encoder
	GpioG1DataRegs.GPADAT.bit.GPIO6 = 0; 					//Latch Output
	temp = (GpioG1DataRegs.GPADAT.all & 0x000FFF00) >> 8;
	GpioG1DataRegs.GPADAT.bit.GPIO6 = 1; 					//UnLatch Output
	tita = (temp*2*PI)/4096;
	tita += absOffset;

	if(tita > (2*PI))
	{ tita = tita-(2*PI); }
	else if(tita < 0)
	{ tita = tita + (2*PI);	}

	//Generating continuous value for tita
	if(((tita>=0 && tita<=PI/2)&&(tita_prev>=3*PI/2 && tita_prev<=2*PI)) ||
	   ((tita_prev>=0 && tita_prev<=PI/2)&&(tita>=3*PI/2 && tita<=2*PI)))
	{
		rev = rev - sign(tita-tita_prev);
	}

	if(tita >= PI)						//tita_neg for stabilizing(inverted position zero)
	{	tita_neg = tita-2*PI;	}
	else
	{	tita_neg = tita;		}

	if(tita_neg >= 0 && tita_neg <= PI)
	{	theta=tita_neg-PI;		}
	else
	{	theta = tita_neg + PI;	}

	tita_cont = tita+(2*PI*rev);

	//Evaluating derivatives using finite difference equations and past samples

	titadot = (tita_cont + 3*tita_hist[0] - 3*tita_hist[1] -tita_hist[2])/(6*SAMP_PER);
	tita_hist[2] = tita_hist[1];
	tita_hist[1] = tita_hist[0];
	tita_hist[0] = tita_cont;
	tita_prev = tita;

	//Read data from relative encoder
	//stop counts
	counts=(unsigned int)EQep1Regs.QPOSCNT;     // read counts
	if(EQep1Regs.QFLG.bit.PCO == 1)
	{
		counts += 0xFFFFFFFF;
		EQep1Regs.QFLG.bit.PCO = 0;
	}
	else if(EQep1Regs.QFLG.bit.PCU == 1)
	{
		counts = 0xFFFFFFFF - counts;
		EQep1Regs.QFLG.bit.PCU = 0;
	}
	EQep1Regs.QEPCTL.bit.SWI=1;					//clear counts
	EQep1Regs.QEPCTL.bit.SWI=0;

	x = counts*(75.3982e-3/200);
	xdot = (x + 3*x_hist[0] - 3*x_hist[1] -x_hist[2])/(6*SAMP_PER);
	x_hist[2] = x_hist[1];
	x_hist[1] = x_hist[0];
	x_hist[0] = x;
}

short int sign(double x)
{
	if(x>0)
	{ return 1; }
	else if(x<0)
	{ return -1; }
	else
	{ return 0; }
}


