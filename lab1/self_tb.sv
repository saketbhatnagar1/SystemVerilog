module self_tb();
 logic a, b, c;
 logic y;
 // instantiate device under test
 SillyFunction dut(a, b, c, y);
 // apply inputs one at a time
initial begin
 a = 0; b = 0; c = 0; #10; // 000
 if (y != 1) $display("000 failed.");
 c = 1; #10; // 001
 if (y != 0) $display("001 failed.");
 b = 1; c = 0; #10; // 010
 if (y != 1) $display("010 failed.");
 c = 1; #10; // 011
 if (y != 0) $display("011 failed.");
 a = 1; b = 0; c = 0; #10; // 100
 if (y != 1) $display("100 failed.");
 c = 1; #10; // 101
 if (y != 1) $display("101 failed.");
 b = 1; c = 0; #10; // 110
 if (y != 0) $display("110 failed.");
 c = 1; #10; // 111
 if (y != 0) $display("111 failed.");
 end
endmodule