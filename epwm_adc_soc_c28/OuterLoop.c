/*
 * OuterLoop.c
 *
 *  Created on: Apr 30, 2013
 *      Author: Daniel
 */

#include "Functions.h"


bool start_outer = true;
double tita, titadot, x, xdot, theta, tita_neg = 0;
double VREF, Force, ws, wl, mju, Fsw, Fl, ANGV, e1, e2 = 0;
double xd, O, f1, f2, d2, d1, gwn, phiwn, DV, row, a, E, Ed =0;
double tita_hist[3] = {0};
double x_hist[3] = {0};

interrupt void Outer_Loop(void)
{
	int i = 0;
	double Torque_Reference;
	if(start_outer == true)
	{
		for(i=0;i<4;i++)
		{
			tita_hist[i] = 0;
			x_hist[i] = 0;
		}
		EQep1Regs.QEPCTL.bit.SWI=1;
		EQep1Regs.QEPCTL.bit.SWI=0;
		start_outer = false;
	}
	else
	{
		sensorData();	//getData

//-----------------------------Transition Controller----------------------//

		ANGV=xdot/divider;
		mju = sqrt(pow(ANGV,2)+pow(tita_neg,2));
		if(mju <= g1)
		{
			ws = 0;
			wl = 1;
		}

		if(mju >= g2)
		{
			ws = 1;
			wl = 0;
		}

		if(mju > g1 && mju < g2)
		{
			ws = (mju-g1)/(g2-g1);
			wl = (g2-mju)/(g2-g1);
		}
//---------------------------------Linear Mode----------------------------//

		if(ws == 0 && wl == 1)
		{
			Force = ((A*x)+(B*xdot)+(C*tita_neg)+(D*titadot));

		}

//--------------------------------Swing Up Mode---------------------------//
		else
		{
			O = wn/c0;
			f1 = pow(O,2);
			f2 = 2*z*O;
			d2 = 1 - pow(c0,2);
			d1 = (2*z*c0);
			gwn = 1/(sqrt(pow(d1,2)+pow(d2,2)));
			phiwn = atan2(d1,d2);
			DV = titadot/wn;
			row = -1*atan2(DV,theta);
			if(row < 0)
			{ row = row+2*PI; }

			E = 0.5*m*pow(L,2)*pow(titadot,2)+m*g*L*(1-cos(theta));
			Ed = 2*m*g*L;

			if(abs(E-Ed) >= b0)
			{ a = a0*sign(E-Ed); }
			else
			{ a = (a0*(E-Ed))/b0; }

			xd = (a/gwn)*sin(row-PI+phiwn);

			Fsw = ( (M+m*pow(sin(theta),2))*(f1*(xd-x)-f2*xdot) +
					m*g*cos(theta)*sin(theta) + m*L*pow(titadot,2)*sin(theta) );
			Fl = ((A*x)+(B*xdot)+(C*tita_neg)+(D*titadot));
			Force = wl*Fl + ws*Fsw;
		}

//--------------------------Torque and PWM calculation -------------------//
		Torque_Reference = Force*pinion_radius;

		//Saturation and Deadzone Compensation
		if(Torque_Reference >= Saturation)
		{ Torque_Reference = Saturation; }
		if(Torque_Reference <= -Saturation)
		{ Torque_Reference = -Saturation; }

		PieCtrlRegs.PIEACK.all = PIEACK_GROUP3; // Acknowledge interrupt to PIE
		return;
	}

}


