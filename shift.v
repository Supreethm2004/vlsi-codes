`timescale 1ns/1ns 
module multiplier #(parameter m=4, n=4)( 
    input clk, rst, 
    input [m-1:0] A, 
    input [n-1:0] B, 
    output reg [m+n-1:0] C 
); 
    integer i; 
    reg [m+n-1:0] temp; 
 
    always @(posedge clk or posedge rst) begin 
        if (rst) 
            C <= 0; 
        else begin 
            temp = 0; 
            for (i = 0; i < n; i = i + 1) 
                if (B[i]) 
                    temp = temp + (A << i); 
            C <= temp; 
        end 
    end 
endmodule
