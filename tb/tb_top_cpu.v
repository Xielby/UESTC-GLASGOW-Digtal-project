`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/01 20:34:27
// Design Name: 
// Module Name: tb_top_cpu
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


module tb_top_cpu();

reg clk, rst;

wire        en_ram_in;


parameter Tclk = 10;

top_cpu test_top_cpu(
    .clk (clk),
    .rst (rst),


    .en_ram_in (en_ram_in)

);


initial begin
    // Define clk
    clk=1;
    forever #(Tclk/2) clk=~clk;
end

initial begin
    // Define rst
    rst=0;
    #(3)	rst=1; 
end

initial begin
    // Define rst
    #(Tclk*100) $stop; 
end

initial begin
    #200
    $stop;
end

endmodule

