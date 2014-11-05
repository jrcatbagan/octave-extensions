#////////////////////////////////////////////////////////////////////////////////////////
# File: triphase.m
# Created: 04, November 2014
# Author: Jarielle Catbagan
#
#
# Description:
#
# Calculates all the parameters associated with 3-phase circuit.
#
#
# Usage:
#
#
#////////////////////////////////////////////////////////////////////////////////////////

function triphase(vrms, z_wire, z_load)
	 z_sum = z_wire + z_load;

	 r = vrms * cosd(0);
	 c = j * vrms * sind(0);
	 ia = (r + c) / z_sum

	 r = vrms * cosd(120);
	 c = j * vrms * sind(-120);
	 ib = (r + c) / z_sum

	 r = vrms * cosd(-120);
	 c = j * vrms * sind(120);
	 ic = (r + c) / z_sum

	 ia_pmag = sqrt((real(ia))^2 + (imag(ia))^2);
	 ia_pangle = atan2d(imag(ia), real(ia));

	 ib_pmag = sqrt((real(ib))^2 + (imag(ib))^2);
	 ib_pangle = atan2d(imag(ib), real(ib));

	 ic_pmag = sqrt((real(ic))^2 + (imag(ic))^2);
	 ic_pangle = atan2d(imag(ic), real(ic));

	 printf("\n\tia:\t");
	 disp(ia);
	 printf("\t\t%f /%f deg\n", ia_pmag, ia_pangle);
	 
	 printf("\n\tib:\t");
	 disp(ib);
	 printf("\t\t%f /%f deg\n", ib_pmag, ib_pangle);
	 
	 printf("\n\tic:\t");
	 disp(ic);
	 printf("\t\t%f /%f deg\n", ic_pmag, ic_pangle);

	 van = ia * z_load;
	 vbn = ib * z_load;
	 vcn = ic * z_load;

	 van_pmag = sqrt((real(van))^2 + (imag(van))^2);
	 van_pangle = atan2d(imag(van), real(van));

	 vbn_pmag = sqrt((real(vbn))^2 + (imag(vbn))^2); 
	 vbn_pangle = atan2d(imag(vbn), real(vbn));

	 vcn_pmag = sqrt((real(vcn))^2 + (imag(vcn))^2);
	 vcn_pangle = atan2d(imag(vcn), real(vcn));

	 printf("\n\tvan:\t");
	 disp(van);
	 printf("\t\t%f /%f deg\n", van_pmag, van_pangle);

	 printf("\n\tvbn:\t");
	 disp(vbn);
	 printf("\t\t%f /%f deg\n", vbn_pmag, vbn_pangle);
	 
	 printf("\n\tvcn:\t");
	 disp(vcn);
	 printf("\t\t%f /%f deg\n", vcn_pmag, vcn_pangle);

	 vab = van - vbn;
	 vab_mag = sqrt(real(vab)^2 + imag(vab)^2);
	 vab_angle = atan2d(imag(vab), real(vab));
	 printf("\n\tvab:\t");
	 disp(vab);
	 printf("\t\t%f /%f\n", vab_mag, vab_angle);
	 
	 vbc = vbn - vcn;
	 vbc_mag = sqrt(real(vbc)^2 + imag(vbc)^2);
	 vbc_angle = atan2d(imag(vbc), real(vbc));
	 printf("\n\tvbc:\t");
	 disp(vbc);
	 printf("\t\t%f /%f\n", vbc_mag, vbc_angle);

	 vca = vcn - van;
	 vca_mag = sqrt(real(vca)^2 + imag(vca)^2);
	 vca_angle = atan2d(imag(vca), real(vca));
	 printf("\n\tvca:\t");
	 disp(vca);
	 printf("\t\t%f /%f\n", vca_mag, vca_angle);

	 sl = (van * conj(ia)) + (vbn * conj(ib)) + (vcn * conj(ic));
	 sl_mag = sqrt((real(sl))^2 + (imag(sl))^2);
	 sl_angle = atan2d(imag(sl), real(sl));

	 printf("\n\tsl:\t");
	 disp(sl);
	 printf("\t\t%f /%f deg\n", sl_mag, sl_angle);
endfunction
