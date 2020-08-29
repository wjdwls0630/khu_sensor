# This is an awk file to generate pin-to-pin delay by net and net delay by net.
# 1998. 8. 15
# Written by Hae-jin Song
# Version : 1.0

BEGIN { driver_find = 0; load_find=0; cnt=0; 
	delay= 1;	
	f_cnt = 1;
	t_cnt = 1;
	ins_name = ARGV[2];
	nontop = 0;
	reference_delay = 2;
	printf("") > "long_delay.tmp"
	printf("") > "pin2pin.tmp"
}
{

	if ( $1 == "Connections" ) { 	
		net_name = $4
		gsub("'","",net_name);
		gsub(":","",net_name);
	} else if ( $1 == "total" && $2 == "capacitance:" ) {
		t_cap = $3;
	} else if ( $1 == "wire" && $2 == "resistance:" ) {
		res = $3;
	} else if ( $1 == "Driver" && $2 == "Pins" ) { 
		driver_find = 1;  next
	} else if ( $1 == "Load" && $2 == "Pins" ) {
		driver_find = 0; load_find = 1; next
	} 


	if ( (NF == 5 || NF == 4)  && driver_find  == 1) {
		from_pin[f_cnt++] = $1;
		#print from_pin[f_cnt-1]
	} else if ( NF == 5 && load_find == 1 ) {
		to_pin[t_cnt++] = $1;
		#print to_pin[t_cnt-1]
   }
}
END {
	interconnection_delay = res * t_cap;

	for(i=1; i< f_cnt; i++) {
		for(j=1; j< t_cnt; j++) {	
			if (nontop ) {
				if ( net_name==to_pin[j] || net_name == from_pin[i])  exit
			}
			if ( interconnection_delay >= reference_delay  && to_pin[j] != "" \
					&& !match(from_pin[i],"Logic")) {
				printf("%s set_annotated_delay -net -from %s -to %s %s\n", 
			 	net_name,from_pin[i], to_pin[j], interconnection_delay) >> "pin2pin.tmp"
				if ( cnt == 0 ) 
					printf(" set_load_interconnect_delay %s  %s\n", 
						net_name, interconnection_delay) >> "long_delay.tmp";
				cnt ++;
			}
		}
	}
}
