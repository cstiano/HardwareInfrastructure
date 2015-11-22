module muxPCSource (sel, S, E0, E1, E2, E3, E4);


input [2:0]sel;
input [31:0]E0;
input [31:0]E1;
input [31:0]E2;
input [31:0]E3;
input [31:0]E4;
output [31:0]S;


assign S[0] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[0]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[0]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[0]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[0]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[0]));
assign S[1] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[1]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[1]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[1]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[1]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[1]));
assign S[2] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[2]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[2]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[2]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[2]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[2]));
assign S[3] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[3]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[3]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[3]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[3]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[3]));
assign S[4] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[4]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[4]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[4]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[4]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[4]));
assign S[5] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[5]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[5]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[5]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[5]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[5]));
assign S[6] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[6]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[6]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[6]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[6]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[6]));
assign S[7] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[7]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[7]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[7]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[7]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[7]));
assign S[8] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[8]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[8]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[8]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[8]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[8]));
assign S[9] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[9]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[9]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[9]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[9]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[9]));
assign S[10] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[10]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[10]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[10]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[10]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[10]));
assign S[11] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[11]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[11]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[11]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[11]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[11]));
assign S[12] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[12]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[12]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[12]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[12]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[12]));
assign S[13] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[13]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[13]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[13]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[13]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[13]));
assign S[14] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[14]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[14]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[14]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[14]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[14]));
assign S[15] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[15]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[15]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[15]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[15]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[15]));
assign S[16] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[16]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[16]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[16]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[16]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[16]));
assign S[17] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[17]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[17]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[17]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[17]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[17]));
assign S[18] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[18]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[18]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[18]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[18]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[18]));
assign S[19] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[19]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[19]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[19]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[19]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[19]));
assign S[20] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[20]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[20]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[20]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[20]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[20]));
assign S[21] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[21]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[21]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[21]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[21]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[21]));
assign S[22] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[22]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[22]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[22]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[22]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[22]));
assign S[23] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[23]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[23]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[23]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[23]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[23]));
assign S[24] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[24]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[24]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[24]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[24]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[24]));
assign S[25] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[25]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[25]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[25]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[25]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[25]));
assign S[26] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[26]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[26]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[26]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[26]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[26]));
assign S[27] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[27]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[27]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[27]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[27]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[27]));
assign S[28] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[28]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[28]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[28]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[28]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[28]));
assign S[29] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[29]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[29]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[29]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[29]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[29]));
assign S[30] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[30]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[30]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[30]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[30]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[30]));
assign S[31] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0[31]) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1[31]) | ((~sel[0] & sel[1] & ~sel[2] ) & E2[31]) | ((sel[0] & sel[1] & ~sel[2] ) & E3[31]) | ((~sel[0] & ~sel[1] & sel[2] ) & E4[31]));


endmodule