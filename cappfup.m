#////////////////////////////////////////////////////////////////////////////////////////
# File: cappfup.m
# Created: 02, November 2014
# Author: Jarielle Catbagan
#
#
# Description:
#
# Calculates the value of a capacitor parallel to a load to increase the power factor
# from an intial to a final value.
#
#
# Usage:
#
#	cappfup(pf, ppower, qpower, vrmsmag, f)
#
# where pf is the power factor to raise to, ppower is the average power, qpower is
# the reactive power, vrmsmag is the magnitude of the RMS voltage and f is the frequency.
# ppower and qpower are part of the initial complex power.
#////////////////////////////////////////////////////////////////////////////////////////

function cappfup(pf, ppower, qpower, vrmsmag, f)
	 qfpower = ppower * sqrt((1 / (pf^2)) - 1);
	 qcpower = qfpower - qpower;
	 c = (-1 * qcpower) / (vrmsmag^2 * 2 * pi * f);
	 printf("\n\tcapacitor (F): ");
	 disp(c);
	 printf("\n");
endfunction
	 
