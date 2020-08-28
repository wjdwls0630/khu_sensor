#!/bin/csh -f
# This is a c-shell script to generate unique pin-to-pin delay.
# 1998. 8. 15
# Written by Hae-jin Song.
# Version : v1.0

unset noclobber
sort -k 2 -b -n long_delays > long.tmp 
sort -k 1 -b -n pin2pin_delays > pin2pin.tmp
join -j1 2 -j2 1  -o 2.2 2.3 2.4 2.5 2.6 2.7 1.3 long.tmp pin2pin.tmp | sort -u > new_delay.tmp
\rm long.tmp pin2pin.tmp 
