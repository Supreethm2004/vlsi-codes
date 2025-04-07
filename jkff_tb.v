module jkff_tb;
reg clk,j,k;
wire q,qb;
jkff dut(j,k,clk,q,qb);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
#10 j=1;k=0;
#10 j=0;k=1;
#10 j=0;k=0;
#10 j=1;k=1;
end
initial
#50 $finish;
endmodule
