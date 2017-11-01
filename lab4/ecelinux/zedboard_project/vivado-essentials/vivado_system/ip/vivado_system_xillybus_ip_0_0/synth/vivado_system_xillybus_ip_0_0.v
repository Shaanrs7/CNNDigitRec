// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xillybus:xillybus:xillybus_ip:1.0
// IP Revision: 1

(* X_CORE_INFO = "xillybus_ip,Vivado 2016.2" *)
(* CHECK_LICENSE_TYPE = "vivado_system_xillybus_ip_0_0,xillybus_ip,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module vivado_system_xillybus_ip_0_0 (
  S_AXI_ACLK,
  S_AXI_ARESETN,
  Interrupt,
  S_AXI_AWADDR,
  S_AXI_AWVALID,
  S_AXI_WDATA,
  S_AXI_WSTRB,
  S_AXI_WVALID,
  S_AXI_BREADY,
  S_AXI_ARADDR,
  S_AXI_ARVALID,
  S_AXI_RREADY,
  S_AXI_ARREADY,
  S_AXI_RDATA,
  S_AXI_RRESP,
  S_AXI_RVALID,
  S_AXI_WREADY,
  S_AXI_BRESP,
  S_AXI_BVALID,
  S_AXI_AWREADY,
  m_axi_aclk,
  m_axi_aresetn,
  m_axi_arready,
  m_axi_arvalid,
  m_axi_araddr,
  m_axi_arlen,
  m_axi_arsize,
  m_axi_arburst,
  m_axi_arprot,
  m_axi_arcache,
  m_axi_rready,
  m_axi_rvalid,
  m_axi_rdata,
  m_axi_rresp,
  m_axi_rlast,
  m_axi_awready,
  m_axi_awvalid,
  m_axi_awaddr,
  m_axi_awlen,
  m_axi_awsize,
  m_axi_awburst,
  m_axi_awprot,
  m_axi_awcache,
  m_axi_wready,
  m_axi_wvalid,
  m_axi_wdata,
  m_axi_wstrb,
  m_axi_wlast,
  m_axi_bready,
  m_axi_bvalid,
  m_axi_bresp,
  xillybus_bus_clk,
  xillybus_bus_rst_n,
  xillybus_S_AXI_AWADDR,
  xillybus_S_AXI_AWVALID,
  xillybus_S_AXI_WDATA,
  xillybus_S_AXI_WSTRB,
  xillybus_S_AXI_WVALID,
  xillybus_S_AXI_BREADY,
  xillybus_S_AXI_ARADDR,
  xillybus_S_AXI_ARVALID,
  xillybus_S_AXI_RREADY,
  xillybus_S_AXI_ARREADY,
  xillybus_S_AXI_RDATA,
  xillybus_S_AXI_RRESP,
  xillybus_S_AXI_RVALID,
  xillybus_S_AXI_WREADY,
  xillybus_S_AXI_BRESP,
  xillybus_S_AXI_BVALID,
  xillybus_S_AXI_AWREADY,
  xillybus_M_AXI_ARREADY,
  xillybus_M_AXI_ARVALID,
  xillybus_M_AXI_ARADDR,
  xillybus_M_AXI_ARLEN,
  xillybus_M_AXI_ARSIZE,
  xillybus_M_AXI_ARBURST,
  xillybus_M_AXI_ARPROT,
  xillybus_M_AXI_ARCACHE,
  xillybus_M_AXI_RREADY,
  xillybus_M_AXI_RVALID,
  xillybus_M_AXI_RDATA,
  xillybus_M_AXI_RRESP,
  xillybus_M_AXI_RLAST,
  xillybus_M_AXI_AWREADY,
  xillybus_M_AXI_AWVALID,
  xillybus_M_AXI_AWADDR,
  xillybus_M_AXI_AWLEN,
  xillybus_M_AXI_AWSIZE,
  xillybus_M_AXI_AWBURST,
  xillybus_M_AXI_AWPROT,
  xillybus_M_AXI_AWCACHE,
  xillybus_M_AXI_WREADY,
  xillybus_M_AXI_WVALID,
  xillybus_M_AXI_WDATA,
  xillybus_M_AXI_WSTRB,
  xillybus_M_AXI_WLAST,
  xillybus_M_AXI_BREADY,
  xillybus_M_AXI_BVALID,
  xillybus_M_AXI_BRESP,
  xillybus_host_interrupt
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_signal_clock CLK" *)
input wire S_AXI_ACLK;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_signal_reset RST" *)
input wire S_AXI_ARESETN;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 signal_interrupt INTERRUPT" *)
output wire Interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *)
input wire [31 : 0] S_AXI_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *)
input wire S_AXI_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *)
input wire [31 : 0] S_AXI_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *)
input wire [3 : 0] S_AXI_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *)
input wire S_AXI_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *)
input wire S_AXI_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *)
input wire [31 : 0] S_AXI_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *)
input wire S_AXI_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *)
input wire S_AXI_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *)
output wire S_AXI_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *)
output wire [31 : 0] S_AXI_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *)
output wire [1 : 0] S_AXI_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *)
output wire S_AXI_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *)
output wire S_AXI_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *)
output wire [1 : 0] S_AXI_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *)
output wire S_AXI_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *)
output wire S_AXI_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axi_signal_clock CLK" *)
input wire m_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_axi_signal_reset RST" *)
input wire m_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARREADY" *)
input wire m_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARVALID" *)
output wire m_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARADDR" *)
output wire [31 : 0] m_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLEN" *)
output wire [3 : 0] m_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARSIZE" *)
output wire [2 : 0] m_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARBURST" *)
output wire [1 : 0] m_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARPROT" *)
output wire [2 : 0] m_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARCACHE" *)
output wire [3 : 0] m_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RREADY" *)
output wire m_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RVALID" *)
input wire m_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RDATA" *)
input wire [63 : 0] m_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RRESP" *)
input wire [1 : 0] m_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RLAST" *)
input wire m_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWREADY" *)
input wire m_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWVALID" *)
output wire m_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWADDR" *)
output wire [31 : 0] m_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWLEN" *)
output wire [3 : 0] m_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWSIZE" *)
output wire [2 : 0] m_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWBURST" *)
output wire [1 : 0] m_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWPROT" *)
output wire [2 : 0] m_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWCACHE" *)
output wire [3 : 0] m_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WREADY" *)
input wire m_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WVALID" *)
output wire m_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WDATA" *)
output wire [63 : 0] m_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WSTRB" *)
output wire [7 : 0] m_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WLAST" *)
output wire m_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BREADY" *)
output wire m_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BVALID" *)
input wire m_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BRESP" *)
input wire [1 : 0] m_axi_bresp;
output wire xillybus_bus_clk;
output wire xillybus_bus_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_S_AXI AWADDR" *)
output wire [31 : 0] xillybus_S_AXI_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_S_AXI AWVALID" *)
output wire xillybus_S_AXI_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_S_AXI WDATA" *)
output wire [31 : 0] xillybus_S_AXI_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_S_AXI WSTRB" *)
output wire [3 : 0] xillybus_S_AXI_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_S_AXI WVALID" *)
output wire xillybus_S_AXI_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_S_AXI BREADY" *)
output wire xillybus_S_AXI_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_S_AXI ARADDR" *)
output wire [31 : 0] xillybus_S_AXI_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_S_AXI ARVALID" *)
output wire xillybus_S_AXI_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_S_AXI RREADY" *)
output wire xillybus_S_AXI_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_S_AXI ARREADY" *)
input wire xillybus_S_AXI_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_S_AXI RDATA" *)
input wire [31 : 0] xillybus_S_AXI_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_S_AXI RRESP" *)
input wire [1 : 0] xillybus_S_AXI_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_S_AXI RVALID" *)
input wire xillybus_S_AXI_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_S_AXI WREADY" *)
input wire xillybus_S_AXI_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_S_AXI BRESP" *)
input wire [1 : 0] xillybus_S_AXI_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_S_AXI BVALID" *)
input wire xillybus_S_AXI_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_S_AXI AWREADY" *)
input wire xillybus_S_AXI_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI ARREADY" *)
output wire xillybus_M_AXI_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI ARVALID" *)
input wire xillybus_M_AXI_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI ARADDR" *)
input wire [31 : 0] xillybus_M_AXI_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI ARLEN" *)
input wire [3 : 0] xillybus_M_AXI_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI ARSIZE" *)
input wire [2 : 0] xillybus_M_AXI_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI ARBURST" *)
input wire [1 : 0] xillybus_M_AXI_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI ARPROT" *)
input wire [2 : 0] xillybus_M_AXI_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI ARCACHE" *)
input wire [3 : 0] xillybus_M_AXI_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI RREADY" *)
input wire xillybus_M_AXI_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI RVALID" *)
output wire xillybus_M_AXI_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI RDATA" *)
output wire [63 : 0] xillybus_M_AXI_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI RRESP" *)
output wire [1 : 0] xillybus_M_AXI_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI RLAST" *)
output wire xillybus_M_AXI_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI AWREADY" *)
output wire xillybus_M_AXI_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI AWVALID" *)
input wire xillybus_M_AXI_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI AWADDR" *)
input wire [31 : 0] xillybus_M_AXI_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI AWLEN" *)
input wire [3 : 0] xillybus_M_AXI_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI AWSIZE" *)
input wire [2 : 0] xillybus_M_AXI_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI AWBURST" *)
input wire [1 : 0] xillybus_M_AXI_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI AWPROT" *)
input wire [2 : 0] xillybus_M_AXI_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI AWCACHE" *)
input wire [3 : 0] xillybus_M_AXI_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI WREADY" *)
output wire xillybus_M_AXI_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI WVALID" *)
input wire xillybus_M_AXI_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI WDATA" *)
input wire [63 : 0] xillybus_M_AXI_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI WSTRB" *)
input wire [7 : 0] xillybus_M_AXI_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI WLAST" *)
input wire xillybus_M_AXI_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI BREADY" *)
input wire xillybus_M_AXI_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI BVALID" *)
output wire xillybus_M_AXI_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xillybus_M_AXI BRESP" *)
output wire [1 : 0] xillybus_M_AXI_BRESP;
input wire xillybus_host_interrupt;

  xillybus_ip inst (
    .S_AXI_ACLK(S_AXI_ACLK),
    .S_AXI_ARESETN(S_AXI_ARESETN),
    .Interrupt(Interrupt),
    .S_AXI_AWADDR(S_AXI_AWADDR),
    .S_AXI_AWVALID(S_AXI_AWVALID),
    .S_AXI_WDATA(S_AXI_WDATA),
    .S_AXI_WSTRB(S_AXI_WSTRB),
    .S_AXI_WVALID(S_AXI_WVALID),
    .S_AXI_BREADY(S_AXI_BREADY),
    .S_AXI_ARADDR(S_AXI_ARADDR),
    .S_AXI_ARVALID(S_AXI_ARVALID),
    .S_AXI_RREADY(S_AXI_RREADY),
    .S_AXI_ARREADY(S_AXI_ARREADY),
    .S_AXI_RDATA(S_AXI_RDATA),
    .S_AXI_RRESP(S_AXI_RRESP),
    .S_AXI_RVALID(S_AXI_RVALID),
    .S_AXI_WREADY(S_AXI_WREADY),
    .S_AXI_BRESP(S_AXI_BRESP),
    .S_AXI_BVALID(S_AXI_BVALID),
    .S_AXI_AWREADY(S_AXI_AWREADY),
    .m_axi_aclk(m_axi_aclk),
    .m_axi_aresetn(m_axi_aresetn),
    .m_axi_arready(m_axi_arready),
    .m_axi_arvalid(m_axi_arvalid),
    .m_axi_araddr(m_axi_araddr),
    .m_axi_arlen(m_axi_arlen),
    .m_axi_arsize(m_axi_arsize),
    .m_axi_arburst(m_axi_arburst),
    .m_axi_arprot(m_axi_arprot),
    .m_axi_arcache(m_axi_arcache),
    .m_axi_rready(m_axi_rready),
    .m_axi_rvalid(m_axi_rvalid),
    .m_axi_rdata(m_axi_rdata),
    .m_axi_rresp(m_axi_rresp),
    .m_axi_rlast(m_axi_rlast),
    .m_axi_awready(m_axi_awready),
    .m_axi_awvalid(m_axi_awvalid),
    .m_axi_awaddr(m_axi_awaddr),
    .m_axi_awlen(m_axi_awlen),
    .m_axi_awsize(m_axi_awsize),
    .m_axi_awburst(m_axi_awburst),
    .m_axi_awprot(m_axi_awprot),
    .m_axi_awcache(m_axi_awcache),
    .m_axi_wready(m_axi_wready),
    .m_axi_wvalid(m_axi_wvalid),
    .m_axi_wdata(m_axi_wdata),
    .m_axi_wstrb(m_axi_wstrb),
    .m_axi_wlast(m_axi_wlast),
    .m_axi_bready(m_axi_bready),
    .m_axi_bvalid(m_axi_bvalid),
    .m_axi_bresp(m_axi_bresp),
    .xillybus_bus_clk(xillybus_bus_clk),
    .xillybus_bus_rst_n(xillybus_bus_rst_n),
    .xillybus_S_AXI_AWADDR(xillybus_S_AXI_AWADDR),
    .xillybus_S_AXI_AWVALID(xillybus_S_AXI_AWVALID),
    .xillybus_S_AXI_WDATA(xillybus_S_AXI_WDATA),
    .xillybus_S_AXI_WSTRB(xillybus_S_AXI_WSTRB),
    .xillybus_S_AXI_WVALID(xillybus_S_AXI_WVALID),
    .xillybus_S_AXI_BREADY(xillybus_S_AXI_BREADY),
    .xillybus_S_AXI_ARADDR(xillybus_S_AXI_ARADDR),
    .xillybus_S_AXI_ARVALID(xillybus_S_AXI_ARVALID),
    .xillybus_S_AXI_RREADY(xillybus_S_AXI_RREADY),
    .xillybus_S_AXI_ARREADY(xillybus_S_AXI_ARREADY),
    .xillybus_S_AXI_RDATA(xillybus_S_AXI_RDATA),
    .xillybus_S_AXI_RRESP(xillybus_S_AXI_RRESP),
    .xillybus_S_AXI_RVALID(xillybus_S_AXI_RVALID),
    .xillybus_S_AXI_WREADY(xillybus_S_AXI_WREADY),
    .xillybus_S_AXI_BRESP(xillybus_S_AXI_BRESP),
    .xillybus_S_AXI_BVALID(xillybus_S_AXI_BVALID),
    .xillybus_S_AXI_AWREADY(xillybus_S_AXI_AWREADY),
    .xillybus_M_AXI_ARREADY(xillybus_M_AXI_ARREADY),
    .xillybus_M_AXI_ARVALID(xillybus_M_AXI_ARVALID),
    .xillybus_M_AXI_ARADDR(xillybus_M_AXI_ARADDR),
    .xillybus_M_AXI_ARLEN(xillybus_M_AXI_ARLEN),
    .xillybus_M_AXI_ARSIZE(xillybus_M_AXI_ARSIZE),
    .xillybus_M_AXI_ARBURST(xillybus_M_AXI_ARBURST),
    .xillybus_M_AXI_ARPROT(xillybus_M_AXI_ARPROT),
    .xillybus_M_AXI_ARCACHE(xillybus_M_AXI_ARCACHE),
    .xillybus_M_AXI_RREADY(xillybus_M_AXI_RREADY),
    .xillybus_M_AXI_RVALID(xillybus_M_AXI_RVALID),
    .xillybus_M_AXI_RDATA(xillybus_M_AXI_RDATA),
    .xillybus_M_AXI_RRESP(xillybus_M_AXI_RRESP),
    .xillybus_M_AXI_RLAST(xillybus_M_AXI_RLAST),
    .xillybus_M_AXI_AWREADY(xillybus_M_AXI_AWREADY),
    .xillybus_M_AXI_AWVALID(xillybus_M_AXI_AWVALID),
    .xillybus_M_AXI_AWADDR(xillybus_M_AXI_AWADDR),
    .xillybus_M_AXI_AWLEN(xillybus_M_AXI_AWLEN),
    .xillybus_M_AXI_AWSIZE(xillybus_M_AXI_AWSIZE),
    .xillybus_M_AXI_AWBURST(xillybus_M_AXI_AWBURST),
    .xillybus_M_AXI_AWPROT(xillybus_M_AXI_AWPROT),
    .xillybus_M_AXI_AWCACHE(xillybus_M_AXI_AWCACHE),
    .xillybus_M_AXI_WREADY(xillybus_M_AXI_WREADY),
    .xillybus_M_AXI_WVALID(xillybus_M_AXI_WVALID),
    .xillybus_M_AXI_WDATA(xillybus_M_AXI_WDATA),
    .xillybus_M_AXI_WSTRB(xillybus_M_AXI_WSTRB),
    .xillybus_M_AXI_WLAST(xillybus_M_AXI_WLAST),
    .xillybus_M_AXI_BREADY(xillybus_M_AXI_BREADY),
    .xillybus_M_AXI_BVALID(xillybus_M_AXI_BVALID),
    .xillybus_M_AXI_BRESP(xillybus_M_AXI_BRESP),
    .xillybus_host_interrupt(xillybus_host_interrupt)
  );
endmodule
