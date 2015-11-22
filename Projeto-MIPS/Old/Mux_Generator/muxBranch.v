module muxBranch (sel, S, E0, E1, E2, E3, E4, E5);


input [2:0]sel;
input E0;
input E1;
input E2;
input E3;
input E4;
input E5;
output S;


assign S[0] = (((~sel[0] & ~sel[1] & ~sel[2] ) & E0) | ((sel[0] & ~sel[1] & ~sel[2] ) & E1) | ((~sel[0] & sel[1] & ~sel[2] ) & E2) | ((sel[0] & sel[1] & ~sel[2] ) & E3) | ((~sel[0] & ~sel[1] & sel[2] ) & E4) | ((sel[0] & ~sel[1] & sel[2] ) & E5));


endmodule