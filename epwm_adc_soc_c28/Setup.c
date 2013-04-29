/*
 * Setup.c
 *
 *  Created on: Apr 23, 2013
 *      Author: Daniel
 */
#include "Functions.h"

void Setup(void)
{
	// Step 1. Initialize System Control for Control and Analog Subsytems
	// Enable Peripheral Clocks
	// This example function is found in the F28M35x_SysCtrl.c file.
	    InitSysCtrl();

	// If project is linked into flash, copy critical code sections to RAM.
	#ifdef _FLASH
	   memcpy(&RamfuncsRunStart, &RamfuncsLoadStart, (size_t)&RamfuncsLoadSize);
	#endif

	    EDIS;

	// Step 2. Initialize GPIO:
	// This example function is found in the F28M35x_Gpio.c file and
	// illustrates how to set the GPIO to it's default state.
	    InitGpio();  // Skipped for this example
	    InitEPwm3Gpio();
	    InitEPwm1Gpio();
	    EALLOW;
	   // GpioG1CtrlRegs.GPCDIR.bit.GPIO70 = 1;
	    GpioG1CtrlRegs.GPBDIR.bit.GPIO32  = 1;  // Set as output
	    GpioG1CtrlRegs.GPBMUX1.bit.GPIO32 = 3;  // Select EPWM1SOCA as driving source
	//    GpioG1CtrlRegs.GPBDIR.bit.GPIO33  = 1;  // Set as output
	//    GpioG1CtrlRegs.GPBMUX1.bit.GPIO33 = 3;  // Select EPWM1SOCB as driving source
	    EDIS;
	 //   GpioG1DataRegs.GPCDAT.bit.GPIO70 = 1;// turn off LED

	// Step 3. Clear all interrupts and initialize PIE vector table:
	// Disable CPU interrupts
	    DINT;

	// Initialize the PIE control registers to their default state.
	// The default state is all PIE interrupts disabled and flags
	// are cleared.
	// This function is found in the F28M35x_PieCtrl.c file.
	    InitPieCtrl();

	// Disable CPU interrupts and clear all CPU interrupt flags:
	    IER = 0x0000;
	    IFR = 0x0000;

	// Initialize the PIE vector table with pointers to the shell Interrupt
	// Service Routines (ISR).
	// This will populate the entire table, even if the interrupt
	// is not used in this example.  This is useful for debug purposes.
	// The shell ISR routines are found in F28M35x_DefaultIsr.c.
	// This function is found in F28M35x_PieVect.c.
	    InitPieVectTable();

	// Interrupts that are used in this example are re-mapped to
	// ISR functions found within this file.
	   EALLOW; // This is needed to write to EALLOW protected register
	   PieVectTable.ADCINT1 = &inner_loop;
	   EDIS;   // This is needed to disable write to EALLOW protected registers

	// Step 4. Initialize all the Device Peripherals:
	// This function is found in F28M35x_InitPeripherals.c
	// InitPeripherals(); // Not required for this example
	    InitAdc1(); // For this example, init the ADC

	    EALLOW;
		SysCtrlRegs.PCLKCR0.bit.TBCLKSYNC = 0;
		EDIS;
		InitEPwm3Example();
		EALLOW;
		SysCtrlRegs.PCLKCR0.bit.TBCLKSYNC = 1;
		EDIS;

	// Step 5. User specific code, enable interrupts:
	// Enable ADCINT1 in PIE
	    PieCtrlRegs.PIEIER1.bit.INTx1 = 1;  // Enable INT 1.1 in the PIE
	    IER |= M_INT1;                      // Enable CPU Interrupt 1
	    EINT;                               // Enable Global interrupt INTM
	    ERTM;                               // Enable Global realtime interrupt DBGM
}
