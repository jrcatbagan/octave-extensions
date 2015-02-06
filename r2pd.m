#////////////////////////////////////////////////////////////////////////////////////////
# File: r2pd.m
# Created: 14, October 2014
# Author: Jarielle Catbagan
#
#
# Description:
#
# This function converts retangular coordinates on the complex-plane to polar 
# coordinates where the angle is in degrees.
#
#
# Usage:
#
#	r2pd(rect_coordinate)
#////////////////////////////////////////////////////////////////////////////////////////

function r2pd(rect_coordinate)
	 realnum = real(rect_coordinate);
	 imagnum = imag(rect_coordinate);
	 magnitude = 0;
	 angle = 0;
	 magnitude = sqrt((realnum^2) + (imagnum^2));
	 angle = atan2d(imagnum, realnum);
	 printf("\n\t%f /%f deg\n\n", magnitude, angle);
endfunction
