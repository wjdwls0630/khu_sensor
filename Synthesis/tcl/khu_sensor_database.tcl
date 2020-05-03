write -f verilog $top -h -o ./db/$top.v
write_sdf -version 1.0      ./db/$top.sdf
write_sdc                   ./db/$top.sdc
write -f ddc $top -h -o     ./db/$top.ddc
