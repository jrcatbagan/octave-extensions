#////////////////////////////////////////////////////////////////////////////////////////
# File: pr.m
# Created: 14, October 2014
# Author: Jarielle Catbagan
#
#
# Description:
#
# This function finds the equivalent resitance of resistors in parallel. The parameter
# resistances to the function is variable argument list.
#
#
# Usage:
#
#	pr(resistances)
#////////////////////////////////////////////////////////////////////////////////////////

function pr(resistances)
	 req = 0;
	 sum = 0;
	 
	 for i = 1:length(resistances)
		  sum += (1 / resistances(i));
         endfor

	 req = 1 / sum;
	 printf("\n\tequivalent resistance: ");
	 disp(req);
	 printf("\n");
endfunction	  
