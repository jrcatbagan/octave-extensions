#////////////////////////////////////////////////////////////////////////////////////////
# File: zl.m
# Created: 14, October 2014
# Author: Jarielle Catbagan
#
#
# Description:
#
# This function finds the impedance (Z) of an inductor (L). The impedance of an inductor
# can be modeled by the equation Z = jwL, where the value is a complex number. The 
# parameter w is omega and is given as 2 * pi * f, where f is frequency. The parameter
# L is the inductance.
#
#
# Usage: 
#
#	zl(frequency, inductance)
#////////////////////////////////////////////////////////////////////////////////////////

function zl(frequency, inductance)
	 z = j * 2 * pi * frequency * inductance;
	 printf("\n\tinductor impedance: ");
	 disp(z);
	 printf("\n");
endfunction
