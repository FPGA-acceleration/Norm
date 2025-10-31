`timescale 1ns / 1ps
module Layer_top_1batch_tb();

  parameter CLK_PERIOD = 10;
  parameter BEATS      = 96;          

  reg                   aclk;
  reg                   arstn;
  reg  [127:0]          S_AXIS_TDATA;
  reg                   S_AXIS_TVALID;
  wire                  S_AXIS_TREADY;
  wire [127:0]          M_AXIS_TDATA;
  wire                  M_AXIS_TVALID;
  wire                  M_AXIS_TLAST;
  reg                   M_AXIS_TREADY;

  // 时钟
  always begin
    aclk = 1'b1;
    #(CLK_PERIOD/2) aclk = 1'b0;
    #(CLK_PERIOD/2);
  end

  // 测试向量：96 个 128-bit 数据
  reg [127:0] mem [0:BEATS-1];
  integer     i;

  initial begin
    //填数据：示例用 0x4000_4000... 递增
      mem[0] = 128'h4400_4400_4400_4400_4400_4400_4400_4400;
        
    for (i = 1; i < BEATS-1; i = i + 1) begin
      mem[i] = 128'h3f80_3f80_3f80_3f80_3f80_3f80_3f80_3f80;

    end
    
      mem[95] = 128'h4440_4440_4440_4440_4440_4440_4440_4440;
      
      
      
      
//      for (i = 0; i < BEATS; i = i + 1)
//      mem[i] = 128'h3f80_3f80_3f80_3f80_3f80_3f80_3f80_3f80;
      

    // 初始化
    aclk          = 0;
    arstn         = 1;
    S_AXIS_TVALID = 0;
    S_AXIS_TDATA  = 0;
    M_AXIS_TREADY = 0;

    @(posedge aclk);
    arstn = 0;
    repeat(5) @(posedge aclk);
    arstn = 1;
    repeat(5) @(posedge aclk);
    M_AXIS_TREADY <= 1;     // 下游放通
    repeat(2) @(posedge aclk);

    // 连续发 96 拍
    for (i = 0; i < BEATS; i = i + 1) begin
      S_AXIS_TDATA  <= mem[i];
      S_AXIS_TVALID <= 1'b1;
      @(posedge aclk);
      while (!S_AXIS_TREADY) @(posedge aclk);  // 握手等待
    end

    S_AXIS_TVALID <= 0;
    repeat(100) @(posedge aclk);
    $finish;
  end

 LayerNorm_wrapper wrapper_u(
        .M_AXIS_0_tdata(M_AXIS_TDATA),
        .M_AXIS_0_tready(M_AXIS_TREADY),
        .M_AXIS_0_tvalid(M_AXIS_TVALID),
        .S_AXIS_0_tdata(S_AXIS_TDATA),
        .S_AXIS_0_tready(S_AXIS_TREADY),
        .S_AXIS_0_tvalid(S_AXIS_TVALID),
        .aclk(aclk),
        .arstn(arstn)
    );
endmodule