
module spi_master ( i_RSTN, i_CLK, i_TX_Byte, i_TX_DV, o_TX_Ready, o_RX_DV, 
        o_RX_Byte, o_SPI_Clk, i_SPI_MISO, o_SPI_MOSI );
  input [7:0] i_TX_Byte;
  output [7:0] o_RX_Byte;
  input i_RSTN, i_CLK, i_TX_DV, i_SPI_MISO;
  output o_TX_Ready, o_RX_DV, o_SPI_Clk, o_SPI_MOSI;
  wire   N0, N1, N11, r_SPI_Clk, N23, N25, N30, N31, N32, N33, N34, N35, N36,
         N37, N54, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79,
         N85, N88, N89, N90, N91, N92, N93, N94, N95, N96, N102, N107, N108,
         N109, N110, N111, N112, N113, N114, N115, N116, N117, N118, N119,
         N120, N121, N122, N123, N126, N127, N128, N129, N130, N131, N132,
         N133, N134, N135, N141, N142, N143, N144, N145, N146, N147, N148,
         N149, N150, N151, N152, N153, N154, N155, N156, alt6_n56, sub_x_13_n1,
         sub_x_11_n1, n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n26, n28, n29, n30, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117;
  wire   [7:0] r_SPI_Clk_Edges;
  wire   [3:0] r_SPI_Clk_Count;
  wire   [7:0] r_TX_Byte;
  wire   [2:0] r_TX_Bit_Count;
  wire   [2:0] r_RX_Bit_Count;

  fd3qd1_hd r_TX_Bit_Count_reg_0_ ( .D(n45), .CK(i_CLK), .SN(i_RSTN), .Q(
        r_TX_Bit_Count[0]) );
  fd3qd1_hd r_TX_Bit_Count_reg_1_ ( .D(n44), .CK(i_CLK), .SN(i_RSTN), .Q(
        r_TX_Bit_Count[1]) );
  fd3qd1_hd r_TX_Bit_Count_reg_2_ ( .D(n43), .CK(i_CLK), .SN(i_RSTN), .Q(
        r_TX_Bit_Count[2]) );
  fd3qd1_hd r_RX_Bit_Count_reg_0_ ( .D(n42), .CK(i_CLK), .SN(i_RSTN), .Q(
        r_RX_Bit_Count[0]) );
  fd3qd1_hd r_RX_Bit_Count_reg_1_ ( .D(n41), .CK(i_CLK), .SN(i_RSTN), .Q(
        r_RX_Bit_Count[1]) );
  fd3qd1_hd r_RX_Bit_Count_reg_2_ ( .D(n40), .CK(i_CLK), .SN(i_RSTN), .Q(
        r_RX_Bit_Count[2]) );
  ao211d1_hd U11 ( .A(n2), .B(N126), .C(n4), .D(n5), .Y(n21) );
  scg22d1_hd U12 ( .A(n6), .B(n7), .C(r_SPI_Clk_Count[1]), .D(n8), .Y(n22) );
  scg14d1_hd U13 ( .A(n9), .B(N79), .C(r_SPI_Clk_Count[1]), .Y(n8) );
  ao211d1_hd U14 ( .A(r_SPI_Clk_Count[3]), .B(n5), .C(n4), .D(n10), .Y(n23) );
  nr2d1_hd U15 ( .A(r_SPI_Clk_Count[3]), .B(n5), .Y(n10) );
  nr2d1_hd U16 ( .A(n11), .B(n7), .Y(n4) );
  nr2d1_hd U17 ( .A(n2), .B(N126), .Y(n5) );
  nr2d1_hd U20 ( .A(n11), .B(N133), .Y(n6) );
  ao22d1_hd U21 ( .A(N79), .B(n9), .C(N133), .D(n11), .Y(n24) );
  ivd1_hd U25 ( .A(n11), .Y(N79) );
  ivd1_hd U27 ( .A(i_TX_DV), .Y(n1) );
  ivd1_hd U29 ( .A(N130), .Y(N131) );
  ad2d1_hd U33 ( .A(N90), .B(N95), .Y(N96) );
  scg6d1_hd U34 ( .A(N95), .B(N89), .C(o_TX_Ready), .Y(N93) );
  scg6d1_hd U35 ( .A(N95), .B(N88), .C(o_TX_Ready), .Y(N92) );
  scg16d1_hd U36 ( .A(N95), .B(r_TX_Bit_Count[0]), .C(alt6_n56), .Y(N91) );
  ivd1_hd U37 ( .A(n28), .Y(N78) );
  ivd1_hd U38 ( .A(n29), .Y(N77) );
  ad2d1_hd U39 ( .A(N37), .B(n30), .Y(N76) );
  ad2d1_hd U40 ( .A(N36), .B(n30), .Y(N75) );
  ad2d1_hd U41 ( .A(N35), .B(n30), .Y(N74) );
  scg6d1_hd U42 ( .A(N34), .B(n30), .C(i_TX_DV), .Y(N73) );
  ad2d1_hd U43 ( .A(N33), .B(n30), .Y(N72) );
  ad2d1_hd U44 ( .A(N32), .B(n30), .Y(N71) );
  ad2d1_hd U45 ( .A(N31), .B(n30), .Y(N70) );
  ad2d1_hd U46 ( .A(N30), .B(n30), .Y(N69) );
  or2d1_hd U50 ( .A(i_TX_DV), .B(n94), .Y(N68) );
  ad2d1_hd U53 ( .A(n95), .B(N122), .Y(N121) );
  ad2d1_hd U54 ( .A(N142), .B(N122), .Y(N120) );
  ad2d1_hd U55 ( .A(N144), .B(N122), .Y(N119) );
  ad2d1_hd U56 ( .A(N146), .B(N122), .Y(N118) );
  ad2d1_hd U57 ( .A(N148), .B(N122), .Y(N117) );
  ad2d1_hd U58 ( .A(N150), .B(N122), .Y(N116) );
  ad2d1_hd U59 ( .A(N152), .B(N122), .Y(N115) );
  ad2d1_hd U60 ( .A(N154), .B(N122), .Y(N114) );
  ad2d1_hd U61 ( .A(N156), .B(N122), .Y(N113) );
  scg6d1_hd U62 ( .A(N122), .B(N108), .C(o_TX_Ready), .Y(N111) );
  scg6d1_hd U63 ( .A(N122), .B(N107), .C(o_TX_Ready), .Y(N110) );
  scg16d1_hd U64 ( .A(N122), .B(r_RX_Bit_Count[0]), .C(alt6_n56), .Y(N109) );
  fd4qd1_hd o_SPI_Clk_reg ( .D(r_SPI_Clk), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), 
        .Q(o_SPI_Clk) );
  fd4qd1_hd r_TX_Byte_reg_6_ ( .D(n19), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), 
        .Q(r_TX_Byte[6]) );
  fd4qd1_hd r_TX_Byte_reg_2_ ( .D(n15), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), 
        .Q(r_TX_Byte[2]) );
  fd4qd1_hd r_TX_Byte_reg_5_ ( .D(n18), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), 
        .Q(r_TX_Byte[5]) );
  fd4qd1_hd r_TX_Byte_reg_1_ ( .D(n14), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), 
        .Q(r_TX_Byte[1]) );
  fd4qd1_hd r_TX_Byte_reg_4_ ( .D(n17), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), 
        .Q(r_TX_Byte[4]) );
  fd4qd1_hd r_TX_Byte_reg_0_ ( .D(n13), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), 
        .Q(r_TX_Byte[0]) );
  fd4qd1_hd r_TX_Byte_reg_7_ ( .D(n20), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), 
        .Q(r_TX_Byte[7]) );
  fd4qd1_hd r_TX_Byte_reg_3_ ( .D(n16), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), 
        .Q(r_TX_Byte[3]) );
  fd4qd1_hd o_TX_Ready_reg ( .D(n96), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), .Q(
        o_TX_Ready) );
  fd4qd1_hd o_RX_DV_reg ( .D(N121), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), .Q(
        o_RX_DV) );
  fd4qd1_hd r_Trailing_Edge_reg ( .D(N78), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), 
        .Q(N102) );
  fd4qd1_hd r_Leading_Edge_reg ( .D(N77), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), 
        .Q(N85) );
  fd4qd1_hd o_RX_Byte_reg_7_ ( .D(n32), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), 
        .Q(o_RX_Byte[7]) );
  fd4qd1_hd r_SPI_Clk_Count_reg_0_ ( .D(n24), .CK(i_CLK), .SN(1'b1), .RN(
        i_RSTN), .Q(r_SPI_Clk_Count[0]) );
  fd4qd1_hd r_SPI_Clk_Count_reg_2_ ( .D(n21), .CK(i_CLK), .SN(1'b1), .RN(
        i_RSTN), .Q(r_SPI_Clk_Count[2]) );
  fd4qd1_hd r_SPI_Clk_reg ( .D(n54), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), .Q(
        r_SPI_Clk) );
  fd4qd1_hd o_SPI_MOSI_reg ( .D(n46), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), .Q(
        o_SPI_MOSI) );
  fd4qd1_hd r_SPI_Clk_Count_reg_3_ ( .D(n23), .CK(i_CLK), .SN(1'b1), .RN(
        i_RSTN), .Q(r_SPI_Clk_Count[3]) );
  fd4qd1_hd r_SPI_Clk_Count_reg_1_ ( .D(n22), .CK(i_CLK), .SN(1'b1), .RN(
        i_RSTN), .Q(r_SPI_Clk_Count[1]) );
  fd4qd1_hd o_RX_Byte_reg_3_ ( .D(n36), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), 
        .Q(o_RX_Byte[3]) );
  fd4qd1_hd o_RX_Byte_reg_2_ ( .D(n37), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), 
        .Q(o_RX_Byte[2]) );
  fd4qd1_hd o_RX_Byte_reg_6_ ( .D(n33), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), 
        .Q(o_RX_Byte[6]) );
  fd4qd1_hd o_RX_Byte_reg_0_ ( .D(n39), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), 
        .Q(o_RX_Byte[0]) );
  fd4qd1_hd o_RX_Byte_reg_4_ ( .D(n35), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), 
        .Q(o_RX_Byte[4]) );
  fd4qd1_hd o_RX_Byte_reg_1_ ( .D(n38), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), 
        .Q(o_RX_Byte[1]) );
  fd4qd1_hd o_RX_Byte_reg_5_ ( .D(n34), .CK(i_CLK), .SN(1'b1), .RN(i_RSTN), 
        .Q(o_RX_Byte[5]) );
  fd4qd1_hd r_SPI_Clk_Edges_reg_7_ ( .D(n55), .CK(i_CLK), .SN(1'b1), .RN(
        i_RSTN), .Q(r_SPI_Clk_Edges[7]) );
  fd4qd1_hd r_SPI_Clk_Edges_reg_6_ ( .D(n47), .CK(i_CLK), .SN(1'b1), .RN(
        i_RSTN), .Q(r_SPI_Clk_Edges[6]) );
  fd4qd1_hd r_SPI_Clk_Edges_reg_5_ ( .D(n48), .CK(i_CLK), .SN(1'b1), .RN(
        i_RSTN), .Q(r_SPI_Clk_Edges[5]) );
  fd4qd1_hd r_SPI_Clk_Edges_reg_4_ ( .D(n49), .CK(i_CLK), .SN(1'b1), .RN(
        i_RSTN), .Q(r_SPI_Clk_Edges[4]) );
  fd4qd1_hd r_SPI_Clk_Edges_reg_3_ ( .D(n50), .CK(i_CLK), .SN(1'b1), .RN(
        i_RSTN), .Q(r_SPI_Clk_Edges[3]) );
  fd4qd1_hd r_SPI_Clk_Edges_reg_2_ ( .D(n51), .CK(i_CLK), .SN(1'b1), .RN(
        i_RSTN), .Q(r_SPI_Clk_Edges[2]) );
  fd4qd1_hd r_SPI_Clk_Edges_reg_1_ ( .D(n52), .CK(i_CLK), .SN(1'b1), .RN(
        i_RSTN), .Q(r_SPI_Clk_Edges[1]) );
  fd4qd1_hd r_SPI_Clk_Edges_reg_0_ ( .D(n53), .CK(i_CLK), .SN(1'b1), .RN(
        i_RSTN), .Q(r_SPI_Clk_Edges[0]) );
  or2d1_hd U92 ( .A(r_SPI_Clk_Count[0]), .B(N129), .Y(N130) );
  or2d1_hd U93 ( .A(N127), .B(N128), .Y(N129) );
  ivd1_hd U94 ( .A(r_SPI_Clk_Count[1]), .Y(N127) );
  or2d1_hd U95 ( .A(N126), .B(r_SPI_Clk_Count[3]), .Y(N128) );
  or2d1_hd U96 ( .A(r_SPI_Clk_Count[1]), .B(N134), .Y(N135) );
  or2d1_hd U97 ( .A(N126), .B(N132), .Y(N134) );
  ivd1_hd U98 ( .A(r_SPI_Clk_Count[3]), .Y(N132) );
  clknd2d1_hd U99 ( .A(n97), .B(N30), .Y(n100) );
  clknd2d1_hd U100 ( .A(n103), .B(n102), .Y(n106) );
  clknd2d1_hd U101 ( .A(n109), .B(n108), .Y(n112) );
  clknd2d1_hd U102 ( .A(n28), .B(n29), .Y(n30) );
  clknd2d1_hd U103 ( .A(N130), .B(n93), .Y(n7) );
  or2d1_hd U104 ( .A(n93), .B(N131), .Y(N54) );
  clknd2d1_hd U105 ( .A(r_SPI_Clk_Count[1]), .B(n6), .Y(n2) );
  clknd2d1_hd U106 ( .A(N25), .B(n1), .Y(n11) );
  clknd2d1_hd U107 ( .A(n7), .B(N133), .Y(n9) );
  clknd2d1_hd U108 ( .A(N79), .B(N131), .Y(n29) );
  clknd2d1_hd U109 ( .A(N79), .B(n93), .Y(n28) );
  clknd2d1_hd U110 ( .A(n117), .B(n116), .Y(N25) );
  ad2d1_hd U111 ( .A(N102), .B(alt6_n56), .Y(N122) );
  or2d1_hd U112 ( .A(o_TX_Ready), .B(N122), .Y(N112) );
  ad2d1_hd U113 ( .A(N85), .B(alt6_n56), .Y(N95) );
  clknd2d1_hd U114 ( .A(alt6_n56), .B(n26), .Y(N94) );
  ivd1_hd U115 ( .A(N95), .Y(n26) );
  mx2d1_hd U116 ( .D0(r_SPI_Clk_Edges[0]), .D1(N69), .S(N68), .Y(n53) );
  mx2d1_hd U117 ( .D0(r_SPI_Clk_Edges[1]), .D1(N70), .S(N68), .Y(n52) );
  mx2d1_hd U118 ( .D0(r_SPI_Clk_Edges[2]), .D1(N71), .S(N68), .Y(n51) );
  mx2d1_hd U119 ( .D0(r_SPI_Clk_Edges[3]), .D1(N72), .S(N68), .Y(n50) );
  mx2d1_hd U120 ( .D0(r_SPI_Clk_Edges[4]), .D1(N73), .S(N68), .Y(n49) );
  mx2d1_hd U121 ( .D0(r_SPI_Clk_Edges[5]), .D1(N74), .S(N68), .Y(n48) );
  mx2d1_hd U122 ( .D0(r_SPI_Clk_Edges[6]), .D1(N75), .S(N68), .Y(n47) );
  mx2d1_hd U123 ( .D0(r_SPI_Clk_Edges[7]), .D1(N76), .S(N68), .Y(n55) );
  xo2d1_hd U124 ( .A(r_SPI_Clk_Edges[7]), .B(n113), .Y(N37) );
  mx2d1_hd U125 ( .D0(o_RX_Byte[5]), .D1(i_SPI_MISO), .S(N118), .Y(n34) );
  ad2d1_hd U126 ( .A(N145), .B(r_RX_Bit_Count[2]), .Y(N146) );
  ad2d1_hd U127 ( .A(r_RX_Bit_Count[0]), .B(N1), .Y(N145) );
  mx2d1_hd U128 ( .D0(o_RX_Byte[1]), .D1(i_SPI_MISO), .S(N114), .Y(n38) );
  ad2d1_hd U129 ( .A(N153), .B(N11), .Y(N154) );
  ad2d1_hd U130 ( .A(r_RX_Bit_Count[0]), .B(N1), .Y(N153) );
  mx2d1_hd U131 ( .D0(o_RX_Byte[4]), .D1(i_SPI_MISO), .S(N117), .Y(n35) );
  ad2d1_hd U132 ( .A(N147), .B(r_RX_Bit_Count[2]), .Y(N148) );
  ad2d1_hd U133 ( .A(N0), .B(N1), .Y(N147) );
  mx2d1_hd U134 ( .D0(o_RX_Byte[0]), .D1(i_SPI_MISO), .S(N113), .Y(n39) );
  ad2d1_hd U135 ( .A(N155), .B(N11), .Y(N156) );
  ad2d1_hd U136 ( .A(N0), .B(N1), .Y(N155) );
  mx2d1_hd U137 ( .D0(o_RX_Byte[6]), .D1(i_SPI_MISO), .S(N119), .Y(n33) );
  ad2d1_hd U138 ( .A(N143), .B(r_RX_Bit_Count[2]), .Y(N144) );
  ad2d1_hd U139 ( .A(N0), .B(r_RX_Bit_Count[1]), .Y(N143) );
  mx2d1_hd U140 ( .D0(o_RX_Byte[2]), .D1(i_SPI_MISO), .S(N115), .Y(n37) );
  ad2d1_hd U141 ( .A(N151), .B(N11), .Y(N152) );
  ad2d1_hd U142 ( .A(N0), .B(r_RX_Bit_Count[1]), .Y(N151) );
  mx2d1_hd U143 ( .D0(o_RX_Byte[3]), .D1(i_SPI_MISO), .S(N116), .Y(n36) );
  ad2d1_hd U144 ( .A(N149), .B(N11), .Y(N150) );
  ad2d1_hd U145 ( .A(r_RX_Bit_Count[0]), .B(r_RX_Bit_Count[1]), .Y(N149) );
  mx2d1_hd U146 ( .D0(o_SPI_MOSI), .D1(N96), .S(N95), .Y(n46) );
  mx2d1_hd U147 ( .D0(n114), .D1(n115), .S(r_TX_Bit_Count[2]), .Y(N90) );
  mx2d1_hd U148 ( .D0(r_SPI_Clk), .D1(N23), .S(n94), .Y(n54) );
  ivd1_hd U149 ( .A(r_SPI_Clk), .Y(N23) );
  mx2d1_hd U150 ( .D0(o_RX_Byte[7]), .D1(i_SPI_MISO), .S(N120), .Y(n32) );
  ad2d1_hd U151 ( .A(N141), .B(r_RX_Bit_Count[2]), .Y(N142) );
  ad2d1_hd U152 ( .A(r_RX_Bit_Count[0]), .B(r_RX_Bit_Count[1]), .Y(N141) );
  or2d1_hd U153 ( .A(r_RX_Bit_Count[1]), .B(r_RX_Bit_Count[2]), .Y(N123) );
  scg2d1_hd U154 ( .A(i_TX_DV), .B(i_TX_Byte[3]), .C(r_TX_Byte[3]), .D(n1), 
        .Y(n16) );
  scg2d1_hd U155 ( .A(i_TX_DV), .B(i_TX_Byte[7]), .C(r_TX_Byte[7]), .D(n1), 
        .Y(n20) );
  scg2d1_hd U156 ( .A(i_TX_DV), .B(i_TX_Byte[0]), .C(r_TX_Byte[0]), .D(n1), 
        .Y(n13) );
  scg2d1_hd U157 ( .A(i_TX_DV), .B(i_TX_Byte[4]), .C(r_TX_Byte[4]), .D(n1), 
        .Y(n17) );
  scg2d1_hd U158 ( .A(i_TX_DV), .B(i_TX_Byte[1]), .C(r_TX_Byte[1]), .D(n1), 
        .Y(n14) );
  scg2d1_hd U159 ( .A(i_TX_DV), .B(i_TX_Byte[5]), .C(r_TX_Byte[5]), .D(n1), 
        .Y(n18) );
  scg2d1_hd U160 ( .A(i_TX_DV), .B(i_TX_Byte[2]), .C(r_TX_Byte[2]), .D(n1), 
        .Y(n15) );
  scg2d1_hd U161 ( .A(i_TX_DV), .B(i_TX_Byte[6]), .C(r_TX_Byte[6]), .D(n1), 
        .Y(n19) );
  mx2d1_hd U162 ( .D0(r_RX_Bit_Count[2]), .D1(N111), .S(N112), .Y(n40) );
  xn2d1_hd U163 ( .A(sub_x_13_n1), .B(r_RX_Bit_Count[2]), .Y(N108) );
  or2d1_hd U164 ( .A(r_RX_Bit_Count[0]), .B(r_RX_Bit_Count[1]), .Y(sub_x_13_n1) );
  mx2d1_hd U165 ( .D0(r_RX_Bit_Count[1]), .D1(N110), .S(N112), .Y(n41) );
  xn2d1_hd U166 ( .A(r_RX_Bit_Count[0]), .B(r_RX_Bit_Count[1]), .Y(N107) );
  mx2d1_hd U167 ( .D0(r_RX_Bit_Count[0]), .D1(N109), .S(N112), .Y(n42) );
  mx2d1_hd U168 ( .D0(r_TX_Bit_Count[2]), .D1(N93), .S(N94), .Y(n43) );
  xn2d1_hd U169 ( .A(sub_x_11_n1), .B(r_TX_Bit_Count[2]), .Y(N89) );
  or2d1_hd U170 ( .A(r_TX_Bit_Count[0]), .B(r_TX_Bit_Count[1]), .Y(sub_x_11_n1) );
  mx2d1_hd U171 ( .D0(r_TX_Bit_Count[1]), .D1(N92), .S(N94), .Y(n44) );
  xn2d1_hd U172 ( .A(r_TX_Bit_Count[0]), .B(r_TX_Bit_Count[1]), .Y(N88) );
  mx2d1_hd U173 ( .D0(r_TX_Bit_Count[0]), .D1(N91), .S(N94), .Y(n45) );
  nr2d1_hd U209 ( .A(N133), .B(N135), .Y(n93) );
  ivd1_hd U210 ( .A(r_RX_Bit_Count[1]), .Y(N1) );
  ivd1_hd U211 ( .A(r_RX_Bit_Count[0]), .Y(N0) );
  ivd1_hd U212 ( .A(r_RX_Bit_Count[2]), .Y(N11) );
  ad2d1_hd U213 ( .A(N54), .B(N79), .Y(n94) );
  nr2d1_hd U214 ( .A(r_RX_Bit_Count[0]), .B(N123), .Y(n95) );
  ivd1_hd U215 ( .A(r_SPI_Clk_Count[0]), .Y(N133) );
  ivd1_hd U216 ( .A(r_SPI_Clk_Count[2]), .Y(N126) );
  nr2d1_hd U217 ( .A(N25), .B(i_TX_DV), .Y(n96) );
  ivd1_hd U218 ( .A(o_TX_Ready), .Y(alt6_n56) );
  ivd1_hd U219 ( .A(r_SPI_Clk_Edges[0]), .Y(N30) );
  ivd1_hd U220 ( .A(r_SPI_Clk_Edges[1]), .Y(n97) );
  ao22d1_hd U221 ( .A(r_SPI_Clk_Edges[1]), .B(N30), .C(r_SPI_Clk_Edges[0]), 
        .D(n97), .Y(N31) );
  ivd1_hd U222 ( .A(n100), .Y(n99) );
  ivd1_hd U223 ( .A(r_SPI_Clk_Edges[2]), .Y(n98) );
  ao22d1_hd U224 ( .A(r_SPI_Clk_Edges[2]), .B(n99), .C(n100), .D(n98), .Y(N32)
         );
  nr2d1_hd U225 ( .A(r_SPI_Clk_Edges[2]), .B(n100), .Y(n103) );
  ivd1_hd U226 ( .A(n103), .Y(n101) );
  ivd1_hd U227 ( .A(r_SPI_Clk_Edges[3]), .Y(n102) );
  ao22d1_hd U228 ( .A(r_SPI_Clk_Edges[3]), .B(n103), .C(n101), .D(n102), .Y(
        N33) );
  ivd1_hd U229 ( .A(n106), .Y(n105) );
  ivd1_hd U230 ( .A(r_SPI_Clk_Edges[4]), .Y(n104) );
  ao22d1_hd U231 ( .A(r_SPI_Clk_Edges[4]), .B(n105), .C(n106), .D(n104), .Y(
        N34) );
  nr2d1_hd U232 ( .A(r_SPI_Clk_Edges[4]), .B(n106), .Y(n109) );
  ivd1_hd U233 ( .A(n109), .Y(n107) );
  ivd1_hd U234 ( .A(r_SPI_Clk_Edges[5]), .Y(n108) );
  ao22d1_hd U235 ( .A(r_SPI_Clk_Edges[5]), .B(n109), .C(n107), .D(n108), .Y(
        N35) );
  ivd1_hd U236 ( .A(n112), .Y(n111) );
  ivd1_hd U237 ( .A(r_SPI_Clk_Edges[6]), .Y(n110) );
  ao22d1_hd U238 ( .A(r_SPI_Clk_Edges[6]), .B(n111), .C(n112), .D(n110), .Y(
        N36) );
  nr2d1_hd U239 ( .A(r_SPI_Clk_Edges[6]), .B(n112), .Y(n113) );
  mx4d1_hd U240 ( .D0(r_TX_Byte[0]), .D1(r_TX_Byte[1]), .D2(r_TX_Byte[2]), 
        .D3(r_TX_Byte[3]), .S0(r_TX_Bit_Count[0]), .S1(r_TX_Bit_Count[1]), .Y(
        n114) );
  mx4d1_hd U241 ( .D0(r_TX_Byte[4]), .D1(r_TX_Byte[5]), .D2(r_TX_Byte[6]), 
        .D3(r_TX_Byte[7]), .S0(r_TX_Bit_Count[0]), .S1(r_TX_Bit_Count[1]), .Y(
        n115) );
  nr4d1_hd U242 ( .A(r_SPI_Clk_Edges[3]), .B(r_SPI_Clk_Edges[2]), .C(
        r_SPI_Clk_Edges[1]), .D(r_SPI_Clk_Edges[0]), .Y(n117) );
  nr4d1_hd U243 ( .A(r_SPI_Clk_Edges[7]), .B(r_SPI_Clk_Edges[6]), .C(
        r_SPI_Clk_Edges[5]), .D(r_SPI_Clk_Edges[4]), .Y(n116) );
endmodule

