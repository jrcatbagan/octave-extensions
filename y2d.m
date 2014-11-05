#////////////////////////////////////////////////////////////////////////////////////////
# File: y2d.m
# Created: 04, November 2014
# Author: Jarielle Catbagan
#
#
# Description:
#
# Calculates the delta-load equivalent of the wye-load
#
# - n{x}n{y} denote the impedance between node x and node y in a delta-load
# - n{x}c denote the impedance between node x and the center node in a wye-load
#
#
# Usage:
#
#	y2d(n1c, n2c, n3c)
#////////////////////////////////////////////////////////////////////////////////////////

function y2d(n1c, n2c, n3c)
	 numerator = (n1c * n2c) + (n1c * n3c) + (n2c * n3c);
	 n1n2 = numerator / n3c;
	 n2n3 = numerator / n1c;
	 n3n1 = numerator / n2c;
	 
	 printf("\n\tn1n2: ");
	 disp(n1n2);
	 printf("\tn2n3: ");
	 disp(n2n3);
	 printf("\tn3n1: ");
	 disp(n3n1);
	 printf("\n");
endfunction
	 
