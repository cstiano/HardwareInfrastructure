module Semaforo(input clock, input rst, output green, ouput red, output yellow);
	initial begin
		int [1:0]state;
		parameter G = 2`b00;
		parameter Y = 2`b01;
		parameter R = 2`b10;
		state = 0;
		int [7:0]cont;
		cont = 8`b0;
		state = 2`b00;
	end
	always_ff @(posedge clock | posedge rst) begin
		if(rst == 1) begin
			state = G;
			count = 0;
		end
		
		case(state)
		G: begin
			if(cont == 8`d300) begin
				state <= Y;
				cont <= 0;
			end
		end 
		Y: begin
			if(cont == 8`d50) begin
				state <= R;
				cont <= 0;
			end
		end
		R: begin
			if(cont == 8`d200) begin
				state <= G;
				cont <= 0;
			end
		end
		endcase
		cont <= cont + 1;
	end
	always_comb begin
		case(state)
		G:  begin
			red = 0; 
			green = 1;
		end
		Y:  begin
			green = 0;
			yellow = 1;
		end
		R: begin
			yellow = 0;
			red = 1;
		end
		endcase
	end
endmodule