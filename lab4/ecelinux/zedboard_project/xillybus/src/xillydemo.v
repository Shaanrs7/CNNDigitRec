// `include "fpga-design/fpga_design.v"

module xillydemo
  (
  input        clk_100,
  input        otg_oc,
  inout [55:0] PS_GPIO,
  output [3:0] GPIO_LED,
  output [3:0] vga4_blue,
  output [3:0] vga4_green,
  output [3:0] vga4_red,
  output       vga_hsync,
  output       vga_vsync,

  output       audio_mclk,
  output       audio_dac,
  input        audio_adc,
  input        audio_bclk,
  input        audio_lrclk,

  output       smb_sclk,
  inout        smb_sdata,
  output [1:0] smbus_addr

  );

   // Clock and quiesce
   wire        bus_clk;
   wire        quiesce;

   // Memory arrays
   reg [7:0]   demoarray[0:31];

   reg [7:0]   litearray0[0:31];
   reg [7:0]   litearray1[0:31];
   reg [7:0]   litearray2[0:31];
   reg [7:0]   litearray3[0:31];

   // Wires related to /dev/xillybus_mem_8
   wire        user_r_mem_8_rden;
   wire        user_r_mem_8_empty;
   reg [7:0]   user_r_mem_8_data;
   wire        user_r_mem_8_eof;
   wire        user_r_mem_8_open;
   wire        user_w_mem_8_wren;
   wire        user_w_mem_8_full;
   wire [7:0]  user_w_mem_8_data;
   wire        user_w_mem_8_open;
   wire [4:0]  user_mem_8_addr;
   wire        user_mem_8_addr_update;

   // Wires related to /dev/xillybus_read_32
   wire        user_r_read_32_rden;
   wire        user_r_read_32_empty;
   wire [31:0] user_r_read_32_data;
   wire        user_r_read_32_eof;
   wire        user_r_read_32_open;

   // Wires related to /dev/xillybus_read_8
   wire        user_r_read_8_rden;
   wire        user_r_read_8_empty;
   wire [7:0]  user_r_read_8_data;
   wire        user_r_read_8_eof;
   wire        user_r_read_8_open;

   // Wires related to /dev/xillybus_write_32
   wire        user_w_write_32_wren;
   wire        user_w_write_32_full;
   wire [31:0] user_w_write_32_data;
   wire        user_w_write_32_open;

   // Wires related to /dev/xillybus_write_8
   wire        user_w_write_8_wren;
   wire        user_w_write_8_full;
   wire [7:0]  user_w_write_8_data;
   wire        user_w_write_8_open;

   // shreesha: debug write declaration
   wire        user_debug_wren;
   wire        user_debug_full;
   wire [31:0] user_debug_din;

   // Wires related to /dev/xillybus_audio
   wire        user_r_audio_rden;
   wire        user_r_audio_empty;
   wire [31:0] user_r_audio_data;
   wire        user_r_audio_eof;
   wire        user_r_audio_open;
   wire        user_w_audio_wren;
   wire        user_w_audio_full;
   wire [31:0] user_w_audio_data;
   wire        user_w_audio_open;

   // Wires related to /dev/xillybus_smb
   wire        user_r_smb_rden;
   wire        user_r_smb_empty;
   wire [7:0]  user_r_smb_data;
   wire        user_r_smb_eof;
   wire        user_r_smb_open;
   wire        user_w_smb_wren;
   wire        user_w_smb_full;
   wire [7:0]  user_w_smb_data;
   wire        user_w_smb_open;

   // Wires related to Xillybus Lite
   wire        user_clk;
   wire        user_wren;
   wire [3:0]  user_wstrb;
   wire        user_rden;
   reg [31:0]  user_rd_data;
   wire [31:0] user_wr_data;
   wire [31:0] user_addr;
   wire        user_irq;


   // Note that none of the ARM processor's direct connections to pads is
   // attached in the instantion below. Normally, they should be connected as
   // toplevel ports here, but that confuses Vivado 2013.4 to think that
   // some of these ports are real I/Os, causing an implementation failure.
   // This detachment results in a lot of warnings during synthesis and
   // implementation, but has no practical significance, as these pads are
   // completely unrelated to the FPGA bitstream.

   xillybus xillybus_ins (

    // Ports related to /dev/xillybus_mem_8
    // FPGA to CPU signals:
    .user_r_mem_8_rden     (user_r_mem_8_rden),
    .user_r_mem_8_empty    (user_r_mem_8_empty),
    .user_r_mem_8_data     (user_r_mem_8_data),
    .user_r_mem_8_eof      (user_r_mem_8_eof),
    .user_r_mem_8_open     (user_r_mem_8_open),

    // CPU to FPGA signals:
    .user_w_mem_8_wren     (user_w_mem_8_wren),
    .user_w_mem_8_full     (user_w_mem_8_full),
    .user_w_mem_8_data     (user_w_mem_8_data),
    .user_w_mem_8_open     (user_w_mem_8_open),

    // Address signals:
    .user_mem_8_addr       (user_mem_8_addr),
    .user_mem_8_addr_update(user_mem_8_addr_update),


    // Ports related to /dev/xillybus_read_32
    // FPGA to CPU signals:
    .user_r_read_32_rden   (user_r_read_32_rden),
    .user_r_read_32_empty  (user_r_read_32_empty),
    .user_r_read_32_data   (user_r_read_32_data),
    .user_r_read_32_eof    (user_r_read_32_eof),
    .user_r_read_32_open   (user_r_read_32_open),


    // Ports related to /dev/xillybus_read_8
    // FPGA to CPU signals:
    .user_r_read_8_rden    (user_r_read_8_rden),
    .user_r_read_8_empty   (user_r_read_8_empty),
    .user_r_read_8_data    (user_r_read_8_data),
    .user_r_read_8_eof     (user_r_read_8_eof),
    .user_r_read_8_open    (user_r_read_8_open),


    // Ports related to /dev/xillybus_write_32
    // CPU to FPGA signals:
    .user_w_write_32_wren  (user_w_write_32_wren),
    .user_w_write_32_full  (user_w_write_32_full),
    .user_w_write_32_data  (user_w_write_32_data),
    .user_w_write_32_open  (user_w_write_32_open),


    // Ports related to /dev/xillybus_write_8
    // CPU to FPGA signals:
    .user_w_write_8_wren   (user_w_write_8_wren),
    .user_w_write_8_full   (user_w_write_8_full),
    .user_w_write_8_data   (user_w_write_8_data),
    .user_w_write_8_open   (user_w_write_8_open),

    // Ports related to /dev/xillybus_audio
    // FPGA to CPU signals:
    .user_r_audio_rden     (user_r_audio_rden),
    .user_r_audio_empty    (user_r_audio_empty),
    .user_r_audio_data     (user_r_audio_data),
    .user_r_audio_eof      (user_r_audio_eof),
    .user_r_audio_open     (user_r_audio_open),

    // CPU to FPGA signals:
    .user_w_audio_wren     (user_w_audio_wren),
    .user_w_audio_full     (user_w_audio_full),
    .user_w_audio_data     (user_w_audio_data),
    .user_w_audio_open     (user_w_audio_open),

    // Ports related to /dev/xillybus_smb
    // FPGA to CPU signals:
    .user_r_smb_rden       (user_r_smb_rden),
    .user_r_smb_empty      (user_r_smb_empty),
    .user_r_smb_data       (user_r_smb_data),
    .user_r_smb_eof        (user_r_smb_eof),
    .user_r_smb_open       (user_r_smb_open),

    // CPU to FPGA signals:
    .user_w_smb_wren       (user_w_smb_wren),
    .user_w_smb_full       (user_w_smb_full),
    .user_w_smb_data       (user_w_smb_data),
    .user_w_smb_open       (user_w_smb_open),

    // Xillybus Lite signals:
    .user_clk              (user_clk),
    .user_wren             (user_wren),
    .user_wstrb            (user_wstrb),
    .user_rden             (user_rden),
    .user_rd_data          (user_rd_data),
    .user_wr_data          (user_wr_data),
    .user_addr             (user_addr),
    .user_irq              (user_irq),

    // General signals
    .clk_100               (clk_100),
    .otg_oc                (otg_oc),
    .PS_GPIO               (PS_GPIO),
    .GPIO_LED              (GPIO_LED),
    .bus_clk               (bus_clk),
    .quiesce               (quiesce),

    // VGA port related outputs

    .vga4_blue             (vga4_blue),
    .vga4_green            (vga4_green),
    .vga4_red              (vga4_red),
    .vga_hsync             (vga_hsync),
    .vga_vsync             (vga_vsync)
  );

   assign      user_irq = 0; // No interrupts for now

   always @(posedge user_clk)
   begin
	  if (user_wstrb[0])
	    litearray0[user_addr[6:2]] <= user_wr_data[7:0];

	  if (user_wstrb[1])
	    litearray1[user_addr[6:2]] <= user_wr_data[15:8];

	  if (user_wstrb[2])
	    litearray2[user_addr[6:2]] <= user_wr_data[23:16];

	  if (user_wstrb[3])
	    litearray3[user_addr[6:2]] <= user_wr_data[31:24];

	  if (user_rden)
	    user_rd_data <= { litearray3[user_addr[6:2]],
			    litearray2[user_addr[6:2]],
			    litearray1[user_addr[6:2]],
			    litearray0[user_addr[6:2]] };
     if (user_wstrb[0])
       litearray0[user_addr[6:2]] <= user_wr_data[7:0];

     if (user_wstrb[1])
       litearray1[user_addr[6:2]] <= user_wr_data[15:8];

     if (user_wstrb[2])
       litearray2[user_addr[6:2]] <= user_wr_data[23:16];

     if (user_wstrb[3])
       litearray3[user_addr[6:2]] <= user_wr_data[31:24];

     if (user_rden)
       user_rd_data <= { litearray3[user_addr[6:2]],
          litearray2[user_addr[6:2]],
          litearray1[user_addr[6:2]],
          litearray0[user_addr[6:2]] };
  end
  
   // A simple inferred RAM
  always @(posedge bus_clk)
  begin
  
	 if (user_w_mem_8_wren)
	   demoarray[user_mem_8_addr] <= user_w_mem_8_data;

	 if (user_r_mem_8_rden)
	   user_r_mem_8_data          <= demoarray[user_mem_8_addr];

    if (user_w_mem_8_wren)
      demoarray[user_mem_8_addr] <= user_w_mem_8_data;

    if (user_r_mem_8_rden)
      user_r_mem_8_data          <= demoarray[user_mem_8_addr];

  end

   assign  user_r_mem_8_empty = 0;
   assign  user_r_mem_8_eof   = 0;
   assign  user_w_mem_8_full  = 0;

   // shreesha: commenting out the 32-bit loopback FIFO
   //// 32-bit loopback
   //fifo_32x512 fifo_32
   //  (
   //   .clk(bus_clk),
   //   .srst(!user_w_write_32_open && !user_r_read_32_open),
   //   .din(user_w_write_32_data)
   //   .wr_en(user_w_write_32_wren),
   //   .rd_en(user_r_read_32_rden),
   //   .dout(user_r_read_32_data),
   //   .full(user_w_write_32_full),
   //   .empty(user_r_read_32_empty)
   //   );

   // shreesha: changes required to break the loopback fifo and add a DUT
   // EDITS BEGIN

   // Wires related to xillybus -> fpga_design
   wire         design_r_read_32_rden;
   wire [31:0]  design_r_read_32_data;
   wire         design_r_read_32_empty;

   // Wires related to fpga_design -> xillybus
   wire         design_w_write_32_wren;
   wire [31:0]  design_w_write_32_data;
   wire         design_w_write_32_full;


   // logic to convert normal FIFO to first word fall through (FWFT) FIFO
   // ref: http://www.billauer.co.il/reg_fifo.html
   // fifo_32x512 is a normal FIFO, while fpga_design (generated by Vivado
   // HLS) requires interfacing with a FWFT FIFO

   reg    dout_read_32_valid;
   wire   fifo_design_r_read_32_rden, fifo_design_r_read_32_empty;

   //---------------------------------------------------------------------
   // xillybus -> fpga_design
   //---------------------------------------------------------------------
   fifo_32x512 fifo_32_0
     (
      .clk    (bus_clk),
      .srst   (!user_w_write_32_open && !user_r_read_32_open),
      .din    (user_w_write_32_data),
      .wr_en  (user_w_write_32_wren),
      .rd_en  (fifo_design_r_read_32_rden),
      .dout   (design_r_read_32_data),
      .full   (user_w_write_32_full),
      .empty  (fifo_design_r_read_32_empty)
      );
   
  assign fifo_design_r_read_32_rden = (!fifo_design_r_read_32_empty) && ((!dout_read_32_valid) || design_r_read_32_rden);
  assign design_r_read_32_empty = !dout_read_32_valid;

  always @(posedge bus_clk)
  begin
    if (fifo_design_r_read_32_rden)
      dout_read_32_valid <= 1;
    else if (design_r_read_32_rden)
      dout_read_32_valid <= 0;
  end

   // end normal FIFO to FWFT FIFO conversion

   //---------------------------------------------------------------------
   // fpga design
   //---------------------------------------------------------------------

   dut test_fpga_design
   (
    .ap_clk             (bus_clk),
    .ap_rst             (!user_w_write_32_open && !user_r_read_32_open),
    .ap_start           (1),
    .strm_in_V_V_dout     (design_r_read_32_data),
    .strm_in_V_V_empty_n  (!design_r_read_32_empty),
    .strm_in_V_V_read     (design_r_read_32_rden),
    .strm_out_V_V_din     (design_w_write_32_data),
    .strm_out_V_V_full_n  (!design_w_write_32_full),
    .strm_out_V_V_write   (design_w_write_32_wren)
    );

   //---------------------------------------------------------------------
   // fpga_design -> xillybus
   //---------------------------------------------------------------------
   fifo_32x512 fifo_32_1
     (
      .clk    (bus_clk),
      .srst   (!user_w_write_32_open && !user_r_read_32_open),
      .din    (design_w_write_32_data),
      .wr_en  (design_w_write_32_wren),
      .rd_en  (user_r_read_32_rden),
      .dout   (user_r_read_32_data),
      .full   (design_w_write_32_full),
      .empty  (user_r_read_32_empty)
      );
   // EDITS END

   // 8-bit loopback
   fifo_8x2048 fifo_8
     (
      .clk(bus_clk),
      .srst(!user_w_write_8_open && !user_r_read_8_open),
      .din(user_w_write_8_data),
      .wr_en(user_w_write_8_wren),
      .rd_en(user_r_read_8_rden),
      .dout(user_r_read_8_data),
      .full(user_w_write_8_full),
      .empty(user_r_read_8_empty)
      );

   assign  user_r_read_8_eof = 0;

   i2s_audio audio
     (
      .bus_clk(bus_clk),
      .clk_100(clk_100),
      .quiesce(quiesce),

      .audio_mclk        (audio_mclk),
      .audio_dac         (audio_dac),
      .audio_adc         (audio_adc),
      .audio_bclk        (audio_bclk),
      .audio_lrclk       (audio_lrclk),

      .user_r_audio_rden (user_r_audio_rden),
      .user_r_audio_empty(user_r_audio_empty),
      .user_r_audio_data (user_r_audio_data),
      .user_r_audio_eof  (user_r_audio_eof),
      .user_r_audio_open (user_r_audio_open),

      .user_w_audio_wren ( user_w_audio_wren),
      .user_w_audio_full (user_w_audio_full),
      .user_w_audio_data (user_w_audio_data),
      .user_w_audio_open (user_w_audio_open)
      );

   smbus smbus
     (
      .bus_clk           (bus_clk),
      .quiesce           (quiesce),

      .smb_sclk          (smb_sclk),
      .smb_sdata         (smb_sdata),
      .smbus_addr        (smbus_addr),

      .user_r_smb_rden   (user_r_smb_rden),
      .user_r_smb_empty  (user_r_smb_empty),
      .user_r_smb_data   (user_r_smb_data),
      .user_r_smb_eof    (user_r_smb_eof),
      .user_r_smb_open   (user_r_smb_open),

      .user_w_smb_wren   (user_w_smb_wren),
      .user_w_smb_full   (user_w_smb_full),
      .user_w_smb_data   (user_w_smb_data),
      .user_w_smb_open   (user_w_smb_open)
      );

endmodule
