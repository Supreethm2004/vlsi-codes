module srff_tb;
reg clk,s,r;
wire q,qb;
srff dut(s,r,clk,q,qb);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
#10 s=1;r=0;
#10 s=0;r=1;
#10 s=0;r=0;
#10 s=1;r=1;
end
initial
#50 $finish;
endmodule
