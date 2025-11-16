// SaketBhatnagar
module tbmux;

logic [3:0] d;
logic [1:0] sel;
logic y1, y2, y3, y4;
muxCont   u1(d, sel, y1);
muxifelse u2(d, sel, y2);
muxcase   u3(d, sel, y3);
muxhier   u4(d, sel, y4);
initial begin
    d = 4'b1010;
    repeat(4) begin
	 sel = $random % 4;  
        #10;
    end

    $finish;
end

endmodule

