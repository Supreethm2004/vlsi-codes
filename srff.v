module srff(s,r,clk,q,qb);
input s,r,clk;
output q,qb;
reg q;
always@(posedge clk)
begin
if(s==1 && r==0)
q<=1;
else if(s==0 && r==1)
q<=0;
else if(s==1 && r==1)
q<=1'bx;
else if(s==0 && r==0)
q<=q;
end
assign qb=~q;
endmodule
