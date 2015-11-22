module muxRegDST (sel, S, E0, E1, E2, E3);


input [1:0]sel;
input [4:0]E0;
input [4:0]E1;
input [4:0]E2;
input [4:0]E3;
output [4:0]S;


assign S[0] = (((~sel[0] & ~sel[1] ) & E0[0]) | ((sel[0] & ~sel[1] ) & E1[0]) | ((~sel[0] & sel[1] ) & E2[0]) | ((sel[0] & sel[1] ) & E3[0]));
assign S[1] = (((~sel[0] & ~sel[1] ) & E0[1]) | ((sel[0] & ~sel[1] ) & E1[1]) | ((~sel[0] & sel[1] ) & E2[1]) | ((sel[0] & sel[1] ) & E3[1]));
assign S[2] = (((~sel[0] & ~sel[1] ) & E0[2]) | ((sel[0] & ~sel[1] ) & E1[2]) | ((~sel[0] & sel[1] ) & E2[2]) | ((sel[0] & sel[1] ) & E3[2]));
assign S[3] = (((~sel[0] & ~sel[1] ) & E0[3]) | ((sel[0] & ~sel[1] ) & E1[3]) | ((~sel[0] & sel[1] ) & E2[3]) | ((sel[0] & sel[1] ) & E3[3]));
assign S[4] = (((~sel[0] & ~sel[1] ) & E0[4]) | ((sel[0] & ~sel[1] ) & E1[4]) | ((~sel[0] & sel[1] ) & E2[4]) | ((sel[0] & sel[1] ) & E3[4]));


endmodule