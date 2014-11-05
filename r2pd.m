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
#	r2pd(real, complex)
#////////////////////////////////////////////////////////////////////////////////////////

function r2pd(real, complex)
	 magnitude = 0;
	 angle = 0;
	 magnitude = sqrt((real^2) + (complex^2));
	 angle = atan2d(complex, real);
	 printf("\n\tmagnitude: ");
	 disp(magnitude);
	 printf("\tangle: ");
	 disp(angle);
	 printf("\n");
endfunction
