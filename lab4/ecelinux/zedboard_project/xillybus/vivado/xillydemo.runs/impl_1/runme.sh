#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/opt/xilinx/xilinx_2016.2/SDK/2016.2/bin:/opt/xilinx/xilinx_2016.2/Vivado/2016.2/ids_lite/ISE/bin/lin64:/opt/xilinx/xilinx_2016.2/Vivado/2016.2/bin
else
  PATH=/opt/xilinx/xilinx_2016.2/SDK/2016.2/bin:/opt/xilinx/xilinx_2016.2/Vivado/2016.2/ids_lite/ISE/bin/lin64:/opt/xilinx/xilinx_2016.2/Vivado/2016.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/opt/xilinx/xilinx_2016.2/Vivado/2016.2/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/opt/xilinx/xilinx_2016.2/Vivado/2016.2/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/srs383/ECE5775/Labs/CNNDigitRec/lab4/ecelinux/zedboard_project/xillybus/vivado/xillydemo.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log xillydemo.vdi -applog -m64 -messageDb vivado.pb -mode batch -source xillydemo.tcl -notrace


