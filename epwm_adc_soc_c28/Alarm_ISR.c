/*
 * Alarm_ISR.c
 *
 *  Created on: May 6, 2013
 *      Author: Daniel
 */

#include "Functions.h"

interrupt void Alarm_ISR( void )
{
	bool toggle = 0;
	unsigned long int i = 0;

	EPwm3Regs.CMPA.half.CMPA = PWM_Period/2;		// 50% duty cycle
	DINT;
	// Disable CPU interrupts
	while(1)
	{
		for(i = 0;i<200000;i++)
		{
			GpioG1DataRegs.GPADAT.bit.GPIO25 = toggle;
			toggle = ~toggle;
		}
		i = 0;
	}
}


