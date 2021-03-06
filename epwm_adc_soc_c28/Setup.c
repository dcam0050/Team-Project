/*
 * Setup.c
 *
 *  Created on: Apr 23, 2013
 *      Author: Daniel
 */
#include "Functions.h"

void Setup(void)
{
	// Step 1. Initialize System Control for Control and Analog Subsystems
	// Enable Peripheral Clocks
	// This example function is found in the F28M35x_SysCtrl.c file.
	    InitSysCtrl();

	// If project is linked into flash, copy critical code sections to RAM.
	#ifdef _FLASH
	   memcpy(&RamfuncsRunStart, &RamfuncsLoadStart, (size_t)&RamfuncsLoadSize);
	#endif

	// Step 2. Initialize GPIO:
	// This example function is found in the F28M35x_Gpio.c file and
	// illustrates how to set the GPIO to it's default state.
	    InitGpio();  // Skipped for this example
	    InitEQep1Gpio();
	    InitEPwm3Gpio();
	    InitEPwm2Gpio();
	    InitEPwm1Gpio();
	    EALLOW;
	    GpioG1CtrlRegs.GPADIR.bit.GPIO5 = 1;	// Set Pin A.5 for Absolute Encoder Direction Control
	    GpioG1CtrlRegs.GPADIR.bit.GPIO6 = 1;	// Set Pin A.6 for Absolute Encoder Latch Control
	    GpioG1CtrlRegs.GPBDIR.bit.GPIO32  = 1;  // Set as output
	    GpioG1CtrlRegs.GPBMUX1.bit.GPIO32 = 3;  // Select EPWM1SOCA as driving source
	    GpioG1CtrlRegs.GPADIR.bit.GPIO25 = 1;	// Set pin as out for alarm LED
	    GpioG1CtrlRegs.GPADIR.bit.GPIO26 = 1;	// For power on orange LED
	    GpioG1CtrlRegs.GPADIR.bit.GPIO27 = 1;	// For startup warning green LED
	    EDIS;

	    GpioG1TripRegs.GPTRIP4SEL.bit.GPTRIP4SEL = 24;		//Switch end of line interrupt
	    XIntruptRegs.XINT1CR.bit.ENABLE = 1;
	    XIntruptRegs.XINT1CR.bit.POLARITY = 00;

	    GpioG1TripRegs.GPTRIP4SEL.bit.GPTRIP4SEL = 7;		//Absolute Encoder Alarm
	    XIntruptRegs.XINT1CR.bit.ENABLE = 1;
	    XIntruptRegs.XINT1CR.bit.POLARITY = 00;


	    GpioG1DataRegs.GPADAT.bit.GPIO5 = 0;	//Increasing count in clockwise direction
	    GpioG1DataRegs.GPADAT.bit.GPIO6 = 1;	//Disable Latch => Continuous updating of output lines

	    GpioG1DataRegs.GPADAT.bit.GPIO25 = 1;
	    GpioG1DataRegs.GPADAT.bit.GPIO26 = 1;
	    GpioG1DataRegs.GPADAT.bit.GPIO27 = 1;	//Disable all LED's


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
	// This function is found in F28M35x_PieVect.c.m
	    InitPieVectTable();

	// Interrupts that are used in this example are re-mapped to
	// ISR functions found within this file.
	   EALLOW; // This is needed to write to EALLOW protected register
	   PieVectTable.ADCINT1 = &Inner_Loop;
//	   PieVectTable.XINT1 = &Alarm_ISR;
//	   PieVectTable.XINT2 = &Alarm_ISR;
//	   PieVectTable.EPWM2_INT = &Outer_Loop;
	   EDIS;   // This is needed to disable write to EALLOW protected registers

	// Step 4. Initialize all the Device Peripherals:
	// This function is found in F28M35x_InitPeripherals.c
	// InitPeripherals(); // Not required for this example
	    InitAdc1();
//	    InitAdc2();
	    PeripheralConfig(); // Configure ADC and EQEP sub-modules
	    EALLOW;
		SysCtrlRegs.PCLKCR0.bit.TBCLKSYNC = 0;
		EDIS;
		EPwmConfig();
		EALLOW;
		SysCtrlRegs.PCLKCR0.bit.TBCLKSYNC = 5;
		EDIS;

	// Step 5. User specific code, enable interrupts:
	// Enable ADCINT1 in PIE
	    PieCtrlRegs.PIEIER1.bit.INTx1 = 1;  // Enable INT 1.1 in the PIE - ADC1 Conversion Ready
//	    PieCtrlRegs.PIEIER1.bit.INTx4 = 1;	// Enable XINT1
//	    PieCtrlRegs.PIEIER1.bit.INTx5 = 1;	// Enable XINT2n
//	    PieCtrlRegs.PIEIER3.bit.INTx2 = 1;	// Enable INT 3.2 in the PIE - Timer 2 Interrupt
	    IER |= M_INT1;                      // Enable CPU Interrupt 1
//	    IER |= M_INT3;						// Enable CPU Interrupt 3
	    return;
}

