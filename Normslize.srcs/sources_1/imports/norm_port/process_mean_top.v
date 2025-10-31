`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2025 02:34:26 PM
// Design Name: 
// Module Name: process_mean_top
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

// Top module for processing mean calculation
// input : 128-bit data (8 bf16 numbers), 16-bit sum
// 输入{ 8*16'data , 16'sum }
// output: 128-bit zero_mean_data (8 bf16 numbers), 16-bit mean square
// 输出{ 8*16'(减去均值后的零均值数据)，16’（均值的平方）}

module process_mean_top(
    input  wire        aclk,
    input  wire        arstn,
    input  wire [143:0] S_AXIS_TDATA,
    output wire         S_AXIS_TREADY,
    input  wire         S_AXIS_TVALID,
    output wire [143:0] M_AXIS_TDATA,
    output wire         M_AXIS_TVALID,
    input  wire         M_AXIS_TREADY
    );

wire [127:0] data_in;
wire data_valid;
wire data_ready;



wire [15:0]  sum_in;
wire sum_valid;
wire sum_ready;
assign data_in = S_AXIS_TDATA[143:16];
assign sum_in  = S_AXIS_TDATA[15:0];
assign S_AXIS_TREADY = sum_ready & data_ready;
assign data_valid = S_AXIS_TVALID;
assign sum_valid  = S_AXIS_TVALID;


wire [15:0] mean_data;
wire mean_ready;
wire mean_ready1;
wire mean_ready2;
wire mean_valid;


bf_mul cal_mean (
          .aclk(aclk),
          .aresetn(arstn),
          .s_axis_a_tvalid(sum_valid),
          .s_axis_a_tready(sum_ready),
          .s_axis_a_tdata(sum_in),
          
          
          .s_axis_b_tvalid(1'b1),
          .s_axis_b_tready(),
          .s_axis_b_tdata(16'h3aab),
          
          
          .m_axis_result_tvalid(mean_valid),
          .m_axis_result_tready(mean_ready),
          .m_axis_result_tdata(mean_data)
      );  
  
assign mean_ready = mean_ready1 & mean_ready2;  
  
wire [127:0]fifo_out;
wire fifo_valid;
wire fifo_ready;

  
mean_fifo fifo_u(
           .aclk(aclk),
           .arstn(arstn),
           .S_AXIS_TDATA(data_in),
           .S_AXIS_TVALID(data_valid),   
           .S_AXIS_TREADY(data_ready), 
           .M_AXIS_TDATA(fifo_out),
           .M_AXIS_TVALID(fifo_valid),
           .M_AXIS_TREADY(fifo_ready)
       );  
  
  
  
wire [15:0] meansquare;
wire meansquare_valid;  
wire meansquare_ready;

bf_mul cal_meansquare (
          .aclk(aclk),
          .aresetn(arstn),
          .s_axis_a_tvalid(mean_valid),
          .s_axis_a_tready(mean_ready1),
          .s_axis_a_tdata(mean_data),
          
          
          .s_axis_b_tvalid(mean_valid),
          .s_axis_b_tready(),
          .s_axis_b_tdata(mean_data),
          
          
          .m_axis_result_tvalid(meansquare_valid),
          .m_axis_result_tready(meansquare_ready),
          .m_axis_result_tdata(meansquare)
      );



wire [127:0] zero_mean_data;
wire zero_mean_valid;
wire zero_mean_ready;


wire fifo_ready_bus [7:0]; 
wire mean_ready_bus [7:0];
wire zero_mean_valid_bus [7:0];

assign fifo_ready = fifo_ready_bus[7]&fifo_ready_bus[6]&fifo_ready_bus[5]&fifo_ready_bus[4]&
                     fifo_ready_bus[3]&fifo_ready_bus[2]&fifo_ready_bus[1]&fifo_ready_bus[0];
assign mean_ready2 = mean_ready_bus[7]&mean_ready_bus[6]&mean_ready_bus[5]&mean_ready_bus[4]&
                     mean_ready_bus[3]&mean_ready_bus[2]&mean_ready_bus[1]&mean_ready_bus[0];
assign zero_mean_valid = zero_mean_valid_bus[7]&zero_mean_valid_bus[6]&zero_mean_valid_bus[5]&zero_mean_valid_bus[4]&
                          zero_mean_valid_bus[3]&zero_mean_valid_bus[2]&zero_mean_valid_bus[1]&zero_mean_valid_bus[0];

genvar i;
    generate
        for (i=0; i<8; i=i+1) begin : sub_mean
            bf_sub sub_mean (
                .aclk(aclk),
                .aresetn(arstn),
                .s_axis_a_tvalid(fifo_valid),
                .s_axis_a_tready(fifo_ready_bus[i]),
                .s_axis_a_tdata(fifo_out[16*i +: 16]),
                .s_axis_b_tvalid(mean_valid),
                .s_axis_b_tready(mean_ready_bus[i]),
                .s_axis_b_tdata(mean_data),
                .m_axis_result_tvalid(zero_mean_valid_bus[i]),
                .m_axis_result_tready(zero_mean_ready),
                .m_axis_result_tdata(zero_mean_data[16*i +: 16])
            );
        end
endgenerate


assign M_AXIS_TDATA = {zero_mean_data, meansquare};
assign M_AXIS_TVALID = zero_mean_valid & meansquare_valid;
assign zero_mean_ready = M_AXIS_TREADY;
assign meansquare_ready = M_AXIS_TREADY;

endmodule
