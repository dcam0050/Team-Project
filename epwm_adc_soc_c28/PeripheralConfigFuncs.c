/*
 * EWP_Config.c
 *
 *  Created on: Apr 23, 2013
 *      Author: Daniel
 */
#include "Functions.h"

void ConfigEpwm1( void )
{
    // Assumes ePWM1 clock is already enabled in InitSysCtrl();
    EALLOW;
    // Enable SOCA and SOCB


    // Time-base registers
    EPwm1Regs.TBPRD = Inner_Loop_Period;                    // Set EPWM timer period
    EPwm1Regs.TBPHS.all = 0;                     // Time-Base Phase Register
    EPwm1Regs.TBCTR = 0;                         // Time-Base Counter Register
    EPwm1Regs.TBCTL.bit.PRDLD = TB_IMMEDIATE;    // Set Immediate load
    EPwm1Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN;   // Count-up mode: used for asymmetric PWM

    EPwm1Regs.TBCTL.bit.PHSEN = TB_DISABLE;      // Disable phase loading
    EPwm1Regs.TBCTL.bit.SYNCOSEL = TB_SYNC_DISABLE;

    EPwm1Regs.AQCTLA.bit.ZRO = AQ_SET;             // Set PWM1A on Zero
    EPwm1Regs.AQCTLA.bit.PRD = AQ_CLEAR;
    // Set TBCLK frequency
    EPwm1Regs.TBCTL.bit.HSPCLKDIV = TB_DIV1;     // TBCLK = SYSCLKOUT
    EPwm1Regs.TBCTL.bit.CLKDIV = TB_DIV1;
    //EPwm1Regs.TBCTL.bit.HSPCLKDIV = 7;     // TBCLK = SYSCLKOUT
     //EPwm1Regs.TBCTL.bit.CLKDIV = 6;

    EPwm1Regs.ETSEL.bit.SOCAEN         = 1;      // Enable SOC on A group
	EPwm1Regs.ETSEL.bit.SOCASEL        = 0x3;    // Select SOC from CMPA/CMPC on up count
	EPwm1Regs.ETPS.bit.SOCAPRD         = 1;      // Generate SOCA pulse on every 3rd event

    EDIS;
}
#include "Functions.h"

void InitEPwm3Example()
{

    EPwm3Regs.TBPRD = 3000;                        // Set timer period
    EPwm3Regs.TBPHS.half.TBPHS = 0x0000;           // Phase is 0
    EPwm3Regs.TBCTR = 0x0000;                      // Clear counter

    // Setup TBCLK
    EPwm3Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN; // Count up
    EPwm3Regs.TBCTL.bit.PHSEN = TB_DISABLE;       // Disable phase loading
    EPwm3Regs.TBCTL.bit.HSPCLKDIV = TB_DIV1;      // Clock ratio to SYSCLKOUT
    EPwm3Regs.TBCTL.bit.CLKDIV = TB_DIV1;         // Slow so we can observe on
                                                  // the scope

    // Setup compare
    EPwm3Regs.CMPA.half.CMPA = 1000;

    // Set actions
    EPwm3Regs.AQCTLA.bit.CAU = AQ_SET;             // Set PWM3A on Zero
    EPwm3Regs.AQCTLA.bit.CAD = AQ_CLEAR;

    //EPwm3Regs.AQCTLA.bit.ZRO = AQ_SET;
    //EPwm3Regs.AQCTLA.bit.PRD = AQ_CLEAR;
}

void ConfigAdc1( void )
{
    // Configure ADC
    EALLOW;

    Adc1Regs.ADCCTL2.bit.ADCNONOVERLAP = 1;     // Set ADC to non-overlap mode

    Adc1Regs.ADCCTL1.bit.INTPULSEPOS   = 0;     // EOC trips after conversion result is latched
    Adc1Regs.INTSEL1N2.bit.INT1E       = 1;     // Enabled ADCINT1
    Adc1Regs.INTSEL1N2.bit.INT1CONT    = 0;     // Disable ADCINT1 Continuous mode
    Adc1Regs.INTSEL1N2.bit.INT1SEL     = 1;     // setup EOC1 to trigger ADCINT1

    // Select ADC input channels
    Adc1Regs.ADCSOC1CTL.bit.CHSEL      = 0;     // set SOC1 channel select to ADC1A2

    // Selecing triggers for SOCs
    AnalogSysctrlRegs.TRIG5SEL.all     = 5;     // Assigning EPWM1SOCA to TRIGGER 6 of analog subsystem

    Adc1Regs.ADCSOC1CTL.bit.TRIGSEL    = 9;    // Assign EPWM1SOCA to SOC1 TRIGSEL

    // Set S/H window of 7 ADC clock cycles
    Adc1Regs.ADCSOC1CTL.bit.ACQPS      = 6;

    EDIS;
}


