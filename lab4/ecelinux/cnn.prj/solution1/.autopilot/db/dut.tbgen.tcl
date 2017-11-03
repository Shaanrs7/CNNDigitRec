set C_TypeInfoList {{ 
"dut" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"strm_in": [[], {"reference": "0"}] }, {"strm_out": [[], {"reference": "0"}] }],[],""], 
"0": [ "stream<ap_uint<32> >", {"hls_type": {"stream": [[[[],"1"]],"2"]}}], 
"1": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}],
"2": ["hls", ""]
}}
set moduleName dut
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dut}
set C_modelType { void 0 }
set C_modelArgList {
	{ strm_in_V_V int 32 regular {fifo 0 volatile }  }
	{ strm_out_V_V int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "strm_in_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "strm_in.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "strm_out_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "strm_out.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ strm_in_V_V_dout sc_in sc_lv 32 signal 0 } 
	{ strm_in_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ strm_in_V_V_read sc_out sc_logic 1 signal 0 } 
	{ strm_out_V_V_din sc_out sc_lv 32 signal 1 } 
	{ strm_out_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ strm_out_V_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "strm_in_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "strm_in_V_V", "role": "dout" }} , 
 	{ "name": "strm_in_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_in_V_V", "role": "empty_n" }} , 
 	{ "name": "strm_in_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_in_V_V", "role": "read" }} , 
 	{ "name": "strm_out_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "strm_out_V_V", "role": "din" }} , 
 	{ "name": "strm_out_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_out_V_V", "role": "full_n" }} , 
 	{ "name": "strm_out_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_out_V_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"], "CDFG" : "dut", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "strm_in_V_V", "Type" : "Fifo", "Direction" : "I", "BlockSignal" : [
			{"Name" : "strm_in_V_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "strm_out_V_V", "Type" : "Fifo", "Direction" : "O", "BlockSignal" : [
			{"Name" : "strm_out_V_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "w_conv1_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_cnn_xcel_fu_118", "Port" : "w_conv1_0"}]}, 
		{"Name" : "w_conv1_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_cnn_xcel_fu_118", "Port" : "w_conv1_1"}]}, 
		{"Name" : "w_conv1_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_cnn_xcel_fu_118", "Port" : "w_conv1_2"}]}, 
		{"Name" : "w_conv1_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_cnn_xcel_fu_118", "Port" : "w_conv1_3"}]}, 
		{"Name" : "b_conv1_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_cnn_xcel_fu_118", "Port" : "b_conv1_0"}]}, 
		{"Name" : "b_conv1_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_cnn_xcel_fu_118", "Port" : "b_conv1_1"}]}, 
		{"Name" : "b_conv1_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_cnn_xcel_fu_118", "Port" : "b_conv1_2"}]}, 
		{"Name" : "b_conv1_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_cnn_xcel_fu_118", "Port" : "b_conv1_3"}]}, 
		{"Name" : "w_conv2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_cnn_xcel_fu_118", "Port" : "w_conv2"}]}, 
		{"Name" : "b_conv2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_cnn_xcel_fu_118", "Port" : "b_conv2"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st3_fsm_2", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_cnn_xcel_fu_118"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "45", "59", "60"], "CDFG" : "dut_cnn_xcel", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_V", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "w_conv1_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_perform_conv_fu_221", "Port" : "w_conv1_0"}]}, 
		{"Name" : "w_conv1_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_perform_conv_fu_221", "Port" : "w_conv1_1"}]}, 
		{"Name" : "w_conv1_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_perform_conv_fu_221", "Port" : "w_conv1_2"}]}, 
		{"Name" : "w_conv1_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_perform_conv_fu_221", "Port" : "w_conv1_3"}]}, 
		{"Name" : "b_conv1_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_perform_conv_fu_221", "Port" : "b_conv1_0"}]}, 
		{"Name" : "b_conv1_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_perform_conv_fu_221", "Port" : "b_conv1_1"}]}, 
		{"Name" : "b_conv1_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_perform_conv_fu_221", "Port" : "b_conv1_2"}]}, 
		{"Name" : "b_conv1_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_perform_conv_fu_221", "Port" : "b_conv1_3"}]}, 
		{"Name" : "w_conv2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_perform_conv_1_fu_246", "Port" : "w_conv2"}]}, 
		{"Name" : "b_conv2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_perform_conv_1_fu_246", "Port" : "b_conv2"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st3_fsm_2", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_perform_conv_fu_221"},
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_perform_conv_1_fu_246"}],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.mem_conv1_0_V_U", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.mem_conv1_1_V_U", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.mem_conv1_2_V_U", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.mem_conv1_3_V_U", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.mem_conv2_V_U", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221", "Parent" : "2", "Child" : ["9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44"], "CDFG" : "dut_perform_conv", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_0_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_1_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_2_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_3_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_V", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "w_conv1_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "w_conv1_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "w_conv1_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "w_conv1_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_conv1_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_conv1_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_conv1_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_conv1_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.w_conv1_0_U", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.w_conv1_1_U", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.w_conv1_2_U", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.w_conv1_3_U", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.b_conv1_0_U", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.b_conv1_1_U", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.b_conv1_2_U", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.b_conv1_3_U", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mux_4to1_sel2_32_1_U1", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mux_4to1_sel2_32_1_U2", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mux_4to1_sel2_32_1_U3", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mux_4to1_sel2_32_1_U4", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mul_32s_32s_62_6_U5", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mul_32s_32s_62_6_U6", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mux_4to1_sel2_32_1_U7", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mux_4to1_sel2_32_1_U8", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mux_4to1_sel2_32_1_U9", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mux_4to1_sel2_32_1_U10", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mul_32s_32s_62_6_U11", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mul_32s_32s_62_6_U12", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mux_4to1_sel2_32_1_U13", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mux_4to1_sel2_32_1_U14", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mux_4to1_sel2_32_1_U15", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mux_4to1_sel2_32_1_U16", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mul_32s_32s_62_6_U17", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mul_32s_32s_62_6_U18", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mux_4to1_sel2_32_1_U19", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mux_4to1_sel2_32_1_U20", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mux_4to1_sel2_32_1_U21", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mux_4to1_sel2_32_1_U22", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mul_32s_32s_62_6_U23", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mul_32s_32s_62_6_U24", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mux_4to1_sel2_32_1_U25", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mux_4to1_sel2_32_1_U26", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mul_32s_32s_62_6_U27", "Parent" : "8", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_fu_221.dut_mux_4to1_sel2_32_1_U28", "Parent" : "8", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_1_fu_246", "Parent" : "2", "Child" : ["46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58"], "CDFG" : "dut_perform_conv_1", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_0_V", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_1_V", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_2_V", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_3_V", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "w_conv2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_conv2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_1_fu_246.w_conv2_U", "Parent" : "45", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_1_fu_246.b_conv2_U", "Parent" : "45", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_1_fu_246.dut_mul_32s_30s_61_6_U42", "Parent" : "45", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_1_fu_246.dut_mul_32s_30s_61_6_U43", "Parent" : "45", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_1_fu_246.dut_mul_32s_30s_61_6_U44", "Parent" : "45", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_1_fu_246.dut_mul_32s_30s_61_6_U45", "Parent" : "45", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_1_fu_246.dut_mul_32s_30s_61_6_U46", "Parent" : "45", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_1_fu_246.dut_mul_32s_30s_61_6_U47", "Parent" : "45", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_1_fu_246.dut_mul_32s_30s_61_6_U48", "Parent" : "45", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_1_fu_246.dut_mul_32s_30s_61_6_U49", "Parent" : "45", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_1_fu_246.dut_mul_32s_30s_61_6_U50", "Parent" : "45", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_1_fu_246.dut_mux_4to1_sel2_32_1_U51", "Parent" : "45", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.grp_dut_perform_conv_1_fu_246.dut_mux_4to1_sel2_32_1_U52", "Parent" : "45", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.dut_sitofp_32ns_32_6_U60", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_cnn_xcel_fu_118.dut_mux_4to1_sel2_32_1_U61", "Parent" : "2", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "109298", "Max" : "109298"}
	, {"Name" : "Interval", "Min" : "109299", "Max" : "109299"}
]}

set Spec2ImplPortList { 
	strm_in_V_V { ap_fifo {  { strm_in_V_V_dout fifo_data 0 32 }  { strm_in_V_V_empty_n fifo_status 0 1 }  { strm_in_V_V_read fifo_update 1 1 } } }
	strm_out_V_V { ap_fifo {  { strm_out_V_V_din fifo_data 1 32 }  { strm_out_V_V_full_n fifo_status 0 1 }  { strm_out_V_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	strm_in_V_V { fifo_read 2 no_conditional }
	strm_out_V_V { fifo_write 576 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
