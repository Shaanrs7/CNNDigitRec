#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("strm_in_V_V_dout", 32, hls_in, 0, "ap_fifo", "fifo_data", 2),
	Port_Property("strm_in_V_V_empty_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 2),
	Port_Property("strm_in_V_V_read", 1, hls_out, 0, "ap_fifo", "fifo_update", 2),
	Port_Property("strm_out_V_V_din", 32, hls_out, 1, "ap_fifo", "fifo_data", 576),
	Port_Property("strm_out_V_V_full_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 576),
	Port_Property("strm_out_V_V_write", 1, hls_out, 1, "ap_fifo", "fifo_update", 576),
};
const char* HLS_Design_Meta::dut_name = "dut";
