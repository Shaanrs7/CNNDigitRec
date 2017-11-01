proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -ruleid {1}  -id {BD 41-968}  -string {{xillybus_S_AXI}}  -new_severity {INFO} 
set_msg_config  -ruleid {2}  -id {BD 41-967}  -string {{xillybus_ip_0/xillybus_M_AXI}}  -new_severity {INFO} 
set_msg_config  -ruleid {3}  -id {BD 41-967}  -string {{xillybus_ip_0/xillybus_S_AXI}}  -new_severity {INFO} 
set_msg_config  -ruleid {4}  -id {BD 41-678}  -string {{xillybus_S_AXI/Reg}}  -new_severity {INFO} 
set_msg_config  -ruleid {5}  -id {BD 41-1356}  -string {{xillybus_S_AXI/Reg}}  -new_severity {INFO} 
set_msg_config  -ruleid {7}  -id {BD 41-759}  -string {{xlconcat_0/In}}  -new_severity {INFO} 
set_msg_config  -ruleid {8}  -id {Netlist 29-160}  -string {{vivado_system_processing_system7}}  -new_severity {INFO} 

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/xillybus/vivado/xillydemo.cache/wt [current_project]
  set_property parent.project_path /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/xillybus/vivado/xillydemo.xpr [current_project]
  set_property ip_repo_paths {
  /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/xillybus/vivado/xillydemo.cache/ip
  /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/vivado-ip
} [current_project]
  set_property ip_output_repo /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/xillybus/vivado/xillydemo.cache/ip [current_project]
  set_property XPM_LIBRARIES XPM_MEMORY [current_project]
  add_files -quiet /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/xillybus/vivado/xillydemo.runs/synth_1/xillydemo.dcp
  set_property edif_extra_search_paths /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/cores [current_fileset]
  read_edif /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/vivado_system/system/pcores/xillybus_lite_v1_00_a/netlist/xillybus_lite.ngc
  add_files -quiet /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/vga_fifo/vga_fifo.dcp
  set_property netlist_only true [get_files /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/vga_fifo/vga_fifo.dcp]
  add_files -quiet /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/fifo_8x2048/fifo_8x2048.dcp
  set_property netlist_only true [get_files /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/fifo_8x2048/fifo_8x2048.dcp]
  add_files -quiet /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/fifo_32x512/fifo_32x512.dcp
  set_property netlist_only true [get_files /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/fifo_32x512/fifo_32x512.dcp]
  read_xdc -ref vivado_system_processing_system7_0_0 -cells inst /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/vivado_system/ip/vivado_system_processing_system7_0_0/vivado_system_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/vivado_system/ip/vivado_system_processing_system7_0_0/vivado_system_processing_system7_0_0.xdc]
  read_xdc -prop_thru_buffers -ref vivado_system_rst_processing_system7_0_100M_0 -cells U0 /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/vivado_system/ip/vivado_system_rst_processing_system7_0_100M_0/vivado_system_rst_processing_system7_0_100M_0_board.xdc
  set_property processing_order EARLY [get_files /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/vivado_system/ip/vivado_system_rst_processing_system7_0_100M_0/vivado_system_rst_processing_system7_0_100M_0_board.xdc]
  read_xdc -ref vivado_system_rst_processing_system7_0_100M_0 -cells U0 /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/vivado_system/ip/vivado_system_rst_processing_system7_0_100M_0/vivado_system_rst_processing_system7_0_100M_0.xdc
  set_property processing_order EARLY [get_files /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/vivado_system/ip/vivado_system_rst_processing_system7_0_100M_0/vivado_system_rst_processing_system7_0_100M_0.xdc]
  read_xdc -mode out_of_context -ref vga_fifo -cells U0 /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/vga_fifo/vga_fifo_ooc.xdc
  set_property processing_order EARLY [get_files /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/vga_fifo/vga_fifo_ooc.xdc]
  read_xdc -ref vga_fifo -cells U0 /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/vga_fifo/vga_fifo/vga_fifo.xdc
  set_property processing_order EARLY [get_files /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/vga_fifo/vga_fifo/vga_fifo.xdc]
  read_xdc -mode out_of_context -ref fifo_8x2048 -cells U0 /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/fifo_8x2048/fifo_8x2048_ooc.xdc
  set_property processing_order EARLY [get_files /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/fifo_8x2048/fifo_8x2048_ooc.xdc]
  read_xdc -ref fifo_8x2048 -cells U0 /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/fifo_8x2048/fifo_8x2048/fifo_8x2048.xdc
  set_property processing_order EARLY [get_files /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/fifo_8x2048/fifo_8x2048/fifo_8x2048.xdc]
  read_xdc -mode out_of_context -ref fifo_32x512 -cells U0 /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/fifo_32x512/fifo_32x512_ooc.xdc
  set_property processing_order EARLY [get_files /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/fifo_32x512/fifo_32x512_ooc.xdc]
  read_xdc -ref fifo_32x512 -cells U0 /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/fifo_32x512/fifo_32x512/fifo_32x512.xdc
  set_property processing_order EARLY [get_files /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/fifo_32x512/fifo_32x512/fifo_32x512.xdc]
  read_xdc /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/xillydemo.xdc
  read_xdc -ref vga_fifo -cells U0 /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/vga_fifo/vga_fifo/vga_fifo_clocks.xdc
  set_property processing_order LATE [get_files /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/vga_fifo/vga_fifo/vga_fifo_clocks.xdc]
  link_design -top xillydemo -part xc7z020clg484-1
  write_hwdef -file xillydemo.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force xillydemo_opt.dcp
  report_drc -file xillydemo_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force xillydemo_placed.dcp
  report_io -file xillydemo_io_placed.rpt
  report_utilization -file xillydemo_utilization_placed.rpt -pb xillydemo_utilization_placed.pb
  report_control_sets -verbose -file xillydemo_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  set src_rc [catch { 
    puts "source /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/showstopper.tcl"
    source /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/showstopper.tcl
  } _RESULT] 
  if {$src_rc} { 
    send_msg_id runtcl-1 error "$_RESULT"
    send_msg_id runtcl-2 error "sourcing script /home/srs383/ECE5775/Labs/lab4/ecelinux/zedboard_project/vivado-essentials/showstopper.tcl failed"
    return -code error
  }
  write_checkpoint -force xillydemo_routed.dcp
  report_drc -file xillydemo_drc_routed.rpt -pb xillydemo_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file xillydemo_timing_summary_routed.rpt -rpx xillydemo_timing_summary_routed.rpx
  report_power -file xillydemo_power_routed.rpt -pb xillydemo_power_summary_routed.pb -rpx xillydemo_power_routed.rpx
  report_route_status -file xillydemo_route_status.rpt -pb xillydemo_route_status.pb
  report_clock_utilization -file xillydemo_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force xillydemo.mmi }
  write_bitstream -force xillydemo.bit 
  catch { write_sysdef -hwdef xillydemo.hwdef -bitfile xillydemo.bit -meminfo xillydemo.mmi -file xillydemo.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

