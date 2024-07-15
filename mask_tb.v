`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.07.2024 10:52:51
// Design Name: 
// Module Name: mask_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mask_tb(

    );
    integer i;
    reg[3:0] rg;
    wire[10:0] mask_o;
    mask dut(.rg(rg),.mask_o(mask_o));
    
    initial
    begin
    for(i=0;i<=15;i=i+1)
    begin
    rg<=i;
    #5;
    $display("rg= %b   mask= %b",rg,mask_o);
    end
    end
endmodule
