`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.07.2024 10:22:35
// Design Name: 
// Module Name: mask
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


module mask( input [3:0]rg,output[10:0]mask_o

    );
    
   
    
    
    assign mask_o[10:7] = 4'b1111;
  assign mask_o[6]= (((~rg[0])&(~rg[3]))|((rg[0])&(~rg[1]))|((rg[1])&(~rg[2]))|((rg[3])&(rg[2])));
    assign mask_o[5]= (((~rg[1])&(~rg[3]))|((rg[2])&(rg[3]))|((rg[1])&(~rg[2])));
  assign mask_o[4]=(((~rg[2])&(~rg[3]))|((rg[2])&(rg[3]))|((rg[0])&(rg[1])&(~rg[2]))|((~rg[0])&(~rg[1])&(rg[2])));
    assign mask_o[3]= (((~rg[2])&(~rg[3]))|((rg[2])&(rg[3])));
    assign mask_o[2]= (((~rg[1])&(~rg[3])&(~rg[2]))|((~rg[0])&(~rg[2])&(~rg[3]))|((rg[1])&(rg[2])&(rg[3]))|((rg[0])&(rg[3])&(rg[2])));
    assign mask_o[1]= (((~rg[1])&(~rg[3])&(~rg[2]))|((rg[1])&(rg[2])&(rg[3])));
     assign mask_o[0]= (((~rg[0])&(~rg[1])&(~rg[3])&(~rg[2]))|((rg[0])&(rg[1])&(rg[2])&(rg[3])));
    
    
endmodule
