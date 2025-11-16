//SaketBhatnagar
module latch(
input logic a, b,sel,
output logic y
);

always @(*) begin
if(sel)
y = a;

end

endmodule
