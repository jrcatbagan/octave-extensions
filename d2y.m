#////////////////////////////////////////////////////////////////////////////////////////
# File: d2y.m
# Created: 04, November 2014
# Author: Jarielle Catbagan
#
#
# Description:
#
# Calculates the wye-load equivalent of the delta-load.
#
# - n{x}n{y} denote the impedance between node x and node y in a delta-load
# - n{x}c denote the impedance between node x and the center node in a wye-load
#
#
# Usage:
#
#	d2y(n1n2, n2n3, n3n1)
#////////////////////////////////////////////////////////////////////////////////////////

function d2y(n1n2, n2n3, n3n1)
	 n1c = (n1n2 * n3n1) / (n1n2 + n2n3 + n3n1);
	 n2c = (n1n2 * n2n3) / (n1n2 + n2n3 + n3n1);
	 n3c = (n2n3 * n3n1) / (n1n2 + n2n3 + n3n1);
	 
	 printf("\n\tn1c: ");
	 disp(n1c);
	 printf("\tn2c: ");
	 disp(n2c);
	 printf("\tn3c: ");
	 disp(n3c);
	 printf("\n");
endfunction
