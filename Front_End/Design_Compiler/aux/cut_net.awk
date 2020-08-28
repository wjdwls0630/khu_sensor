# This is an awk file to cut short delay nets with  less 2ns delay.
# 1998. 8. 15
# Written by Hae-jin Song 
# Version : v1.0

BEGIN { cnt = 1; flag = 0 }
{
	if ( $1 == "Net") { 
		 flag = 1;
	} else if ( flag > 1 && match($1,"-")) flag = -5;
	else if ( flag > 0 ) {
		if ( (($4+0.009) * ($5+0.009)) >=  2 && !match($1,"Logic0") && !match($1,"Logic1")  )
			net[cnt++] = $1; 
		flag ++;
	} 
}
END {
	printf("suv_nets = {");
	for(i=1; i < cnt; i++) {
		if (i!=1) {
			printf(" ,%s",net[i]); 
		}else printf("%s",net[i]);
	}
	printf("}\n");
}
