#////////////////////////////////////////////////////////////////////////////////////////
# File: c2apower.m
# Created: 02, November 2014
# Author: Jarielle Catbagan
#
#
# Description:
#
# Calculates the apparent power from the complex power. The complex power is fed in as
# an argument where the real and complex parts are provided separately.
#
#
# Usage:
#
#	c2apower(real, complex)
#////////////////////////////////////////////////////////////////////////////////////////

function c2apower(real, complex)
        apower = sqrt(real^2 + complex^2);
	printf("\n\tapparent power: ");
	disp(apower);
	printf("\n");
endfunction
