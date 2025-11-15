
module simple_tb();
 logic a, b, c;
 logic y;
 // instantiate device under test
 SillyFunction dut(a, b, c, y);
 // apply inputs one at a time
initial begin
 a = 0; b = 0; c = 0; #10; // 000
 c = 1; #10; // 001
 b = 1; c = 0; #10; // 010
 c = 1; #10; // 011
 a = 1; b = 0; c = 0; #10; // 100
 c = 1; #10; // 101
 b = 1; c = 0; #10; // 110
 c = 1; #10; // 111
 end
endmodule