// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __dut_urem_13ns_9ns_13_17__HH__
#define __dut_urem_13ns_9ns_13_17__HH__
#include "ACMP_urem.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(dut_urem_13ns_9ns_13_17) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_urem<ID, 17, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_urem_U;

    SC_CTOR(dut_urem_13ns_9ns_13_17):  ACMP_urem_U ("ACMP_urem_U") {
        ACMP_urem_U.clk(clk);
        ACMP_urem_U.reset(reset);
        ACMP_urem_U.ce(ce);
        ACMP_urem_U.din0(din0);
        ACMP_urem_U.din1(din1);
        ACMP_urem_U.dout(dout);

    }

};

#endif //
