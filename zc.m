#////////////////////////////////////////////////////////////////////////////////////////
# File: zc.m
# Created: 14, October 2014
# Author: Jarielle Catbagan
#
#
# Description:
# 
# This function finds the impedance (C) of a capacitor (C). The impedance of a capacitor
# can be modeled by the equation Z = 1/(jwC), where the value is a complex number. The
# parameter w is omega and is given as 2 * pi * f, where f is frequency. The parameter
# C is the capacitance
#
#
# Usage:
#
#	zc(frequency, capacitance)
#////////////////////////////////////////////////////////////////////////////////////////

function capacitance = zc(frequency, capacitance)
	 z = 1 / (j * 2 * pi * frequency * capacitance);
	 printf("\n\tcapacitor impedance: ");
	 disp(z);
	 printf("\n");
	 capacitance = z;
endfunction




