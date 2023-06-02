`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/01 15:28:47
// Design Name: 
// Module Name: tb_counter
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


module tb_counter();

//reg defone
reg sys_clk;
reg sys_rst_n;

//wire defone
wire clk_flag;

//initial input
initial begin
    sys_clk <= 1'b1;
    sys_rst_n <= 1'b0;
    #20
    sys_rst_n = 1'b1;
end

//sys_clk10ns��תһ��-50MHZ 
always #10 sys_clk = ~sys_clk;

//flip-flop_inst
timer
#(
    .CNT_MAX (25'd49)
)
timer_inst
(
    .sys_clk (sys_clk),
    .sys_rst_n (sys_rst_n),
    .clk_flag(clk_flag)
);
endmodule
