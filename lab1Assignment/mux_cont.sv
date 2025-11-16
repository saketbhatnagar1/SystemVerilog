//SaketBhatnagar
module muxCont(
input logic [3:0] d,
input logic [1:0] sel,
output logic y
);

assign y = sel == 2'b00 ? d[0]:
sel == 2'b01 ? d[1]:
sel == 2'b10 ? d[2]:
		d[3];
endmodule
	
