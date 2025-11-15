
module SillyFunction(
input logic a,b,c,
output logic y
);

assign y = (~b & ~c)|(a&b);

endmodule