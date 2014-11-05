#////////////////////////////////////////////////////////////////////////////////////////
# File: cpower.m
# Created: 02, November 2014
# Author: Jarielle Catbagan
#
#
# Description:
#
# Calculates the complex power (S) from the power factor and apparent power. Displays 
# the complex power (S) in its original form as well as the real (P/average power) and 
# imaginary (Q/reactive power) individually. The status of the power factore, whether 
# it is lagging or leading must be specified as well.
#
#
# Usage:
#
#	cpower(pf, apower, status = (0 | 1))
#
# where pf is the power factor, apower is the apparent power and status is '0' for
# lagging power factor and '1' for leading power factor.
#////////////////////////////////////////////////////////////////////////////////////////

function cpower(pf, apower, status)
	 if(status == 0)
	 	   spower = apower * (pf + (sqrt(1 - pf^2) * j));
	 elseif(status == 1)
	 	   spower = apower * (pf - (sqrt(1 - pf^2) * j));
	 endif
	 
	 printf("\n\tcomplex power (S): ");
	 disp(spower);
	 printf("\taverage power (P): ");
	 disp(real(spower));
	 printf("\treactive power (Q): ");
	 disp(imag(spower));
	 printf("\n");
endfunction

