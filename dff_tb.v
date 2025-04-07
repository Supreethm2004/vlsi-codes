module dff_tb;
reg clk,rst,d;
wire q,qb;
dff dut(d,clk,rst,q,qb);
initial begin
clk=0; rst=1;
d=1;
#10 rst=0;
#10 rst=1;
#10 d=0;
#10 rst=0;
#10 d=1;
end
always #5 clk=~clk;
initial
#50 $finish;
endmodule
