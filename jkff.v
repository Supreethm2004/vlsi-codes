module jkff(j,k,clk,q,qb);
input j,k,clk;
output q,qb;
reg q;
always@(posedge clk)
begin
if(j==1 && k==0)
q<=1;
else if(j==0 && k==1)
q<=0;
else if(j==1 && k==1)
q<=~q;
else if(j==0 && k==0)
q<=q;
end
assign qb=~q;
endmodule
