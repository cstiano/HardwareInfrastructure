module muxShiftSrc (sel, S, E0, E1);


input [0:0]sel;
input [31:0]E0;
input [31:0]E1;
output [31:0]S;


assign S[0] = (((~sel[0] ) & E0[0]) | ((sel[0] ) & E1[0]));
assign S[1] = (((~sel[0] ) & E0[1]) | ((sel[0] ) & E1[1]));
assign S[2] = (((~sel[0] ) & E0[2]) | ((sel[0] ) & E1[2]));
assign S[3] = (((~sel[0] ) & E0[3]) | ((sel[0] ) & E1[3]));
assign S[4] = (((~sel[0] ) & E0[4]) | ((sel[0] ) & E1[4]));
assign S[5] = (((~sel[0] ) & E0[5]) | ((sel[0] ) & E1[5]));
assign S[6] = (((~sel[0] ) & E0[6]) | ((sel[0] ) & E1[6]));
assign S[7] = (((~sel[0] ) & E0[7]) | ((sel[0] ) & E1[7]));
assign S[8] = (((~sel[0] ) & E0[8]) | ((sel[0] ) & E1[8]));
assign S[9] = (((~sel[0] ) & E0[9]) | ((sel[0] ) & E1[9]));
assign S[10] = (((~sel[0] ) & E0[10]) | ((sel[0] ) & E1[10]));
assign S[11] = (((~sel[0] ) & E0[11]) | ((sel[0] ) & E1[11]));
assign S[12] = (((~sel[0] ) & E0[12]) | ((sel[0] ) & E1[12]));
assign S[13] = (((~sel[0] ) & E0[13]) | ((sel[0] ) & E1[13]));
assign S[14] = (((~sel[0] ) & E0[14]) | ((sel[0] ) & E1[14]));
assign S[15] = (((~sel[0] ) & E0[15]) | ((sel[0] ) & E1[15]));
assign S[16] = (((~sel[0] ) & E0[16]) | ((sel[0] ) & E1[16]));
assign S[17] = (((~sel[0] ) & E0[17]) | ((sel[0] ) & E1[17]));
assign S[18] = (((~sel[0] ) & E0[18]) | ((sel[0] ) & E1[18]));
assign S[19] = (((~sel[0] ) & E0[19]) | ((sel[0] ) & E1[19]));
assign S[20] = (((~sel[0] ) & E0[20]) | ((sel[0] ) & E1[20]));
assign S[21] = (((~sel[0] ) & E0[21]) | ((sel[0] ) & E1[21]));
assign S[22] = (((~sel[0] ) & E0[22]) | ((sel[0] ) & E1[22]));
assign S[23] = (((~sel[0] ) & E0[23]) | ((sel[0] ) & E1[23]));
assign S[24] = (((~sel[0] ) & E0[24]) | ((sel[0] ) & E1[24]));
assign S[25] = (((~sel[0] ) & E0[25]) | ((sel[0] ) & E1[25]));
assign S[26] = (((~sel[0] ) & E0[26]) | ((sel[0] ) & E1[26]));
assign S[27] = (((~sel[0] ) & E0[27]) | ((sel[0] ) & E1[27]));
assign S[28] = (((~sel[0] ) & E0[28]) | ((sel[0] ) & E1[28]));
assign S[29] = (((~sel[0] ) & E0[29]) | ((sel[0] ) & E1[29]));
assign S[30] = (((~sel[0] ) & E0[30]) | ((sel[0] ) & E1[30]));
assign S[31] = (((~sel[0] ) & E0[31]) | ((sel[0] ) & E1[31]));


endmodule