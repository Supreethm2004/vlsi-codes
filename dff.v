module dff(d,clk,rst,q,qb);
input d,clk,rst;
output q,qb;
reg q;
assign qb=~q;
always @(posedge clk)
begin
if(rst==1'b1)
q<=1'b0;
else
q<=d;
end
endmodule
