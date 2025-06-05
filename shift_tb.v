
module multiplier_tb; 
    parameter m = 4, n = 4; 
    reg clk, rst; 
    reg [m-1:0] A; 
    reg [n-1:0] B; 
    wire [m+n-1:0] C; 
     multiplier #(m, n) dut(clk, rst, A, B, C); 
    initial begin 
        clk = 0; 
        forever #4 clk = ~clk; 
    end 
    initial begin 
        rst = 1; #2; rst = 0; 
        A = 4'b1111; B = 4'b1111; 
        #20; 
       rst = 1; #2; rst = 0; 
        A = 4'b0011; B = 4'b0011; 
        #20; 
        rst = 1; #2; rst = 0; 
        A = 4'b1100; B = 4'b0010; 
        #20; 
        $finish; 
    end 
endmodule 
