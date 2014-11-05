#////////////////////////////////////////////////////////////////////////////////////////
# File: p2rd.m
# Created: 14, October 2014
# Author: Jarielle Catbagan
#
#
# Description:
#
# This function converts polar coordinates where the angle is in degrees to rectangular
# coordinates on the complex-plane.
#
#
# Usage:
#
#	p2rd(magnitude, angle)
#////////////////////////////////////////////////////////////////////////////////////////

function p2rd(magnitude, angle)
	 real = 0;
	 complex = 0;
	 real = magnitude * cosd(angle);
	 complex = j * magnitude * sind(angle);
	 printf("\n\treal: ");
	 disp(real);
	 printf("\tcomplex: ");
	 disp(complex);
	 printf("\n");
endfunction
