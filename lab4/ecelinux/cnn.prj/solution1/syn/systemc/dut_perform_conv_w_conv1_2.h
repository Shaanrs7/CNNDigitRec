// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __dut_perform_conv_w_conv1_2_H__
#define __dut_perform_conv_w_conv1_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct dut_perform_conv_w_conv1_2_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 29;
  static const unsigned AddressRange = 4608;
  static const unsigned AddressWidth = 13;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in <sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(dut_perform_conv_w_conv1_2_ram) {
        ram[0] = "0b01000011010010000011110011111";
        ram[1] = "0b11000100010000111000110110111";
        ram[2] = "0b00001000100010011110011000001";
        ram[3] = "0b00010001010101011011010110111";
        ram[4] = "0b10101010010110100100010100000";
        ram[5] = "0b01010001001000001011111100000";
        ram[6] = "0b01000110101011100100000000000";
        ram[7] = "0b00000110111100000011110011111";
        ram[8] = "0b00111000011101011000111010000";
        ram[9] = "0b11101110010100010100101111011";
        ram[10] = "0b11111001100001010010000000100";
        ram[11] = "0b11010000001001101010111110000";
        ram[12] = "0b11001110011101100011011010000";
        ram[13] = "0b10101000111001011011110000000";
        ram[14] = "0b00110101110100101010010101111";
        ram[15] = "0b11111111001011011000101110001";
        ram[16] = "0b10111011010110111100010100000";
        ram[17] = "0b00111011010110011000101011111";
        ram[18] = "0b11110110100100101001100010001";
        ram[19] = "0b11110110111110010001001110000";
        ram[20] = "0b00010101110111000010001110111";
        ram[21] = "0b00111110100001101000000110000";
        ram[22] = "0b00100110100100110001111110000";
        ram[23] = "0b10000010010110100101101001111";
        ram[24] = "0b01001000000100001101101011111";
        ram[25] = "0b11110010110111100011100110101";
        ram[26] = "0b00101000001001110100011001000";
        ram[27] = "0b00101001011110111111111101000";
        ram[28] = "0b00110101100111111100000100000";
        ram[29] = "0b00111000111100000011111101000";
        ram[30] = "0b00100100001101111111000000111";
        ram[31] = "0b01011000010010111101100100000";
        ram[32] = "0b11010111101011001110101111111";
        ram[33] = "0b00010001101100010001111101000";
        ram[34] = "0b00011011000000100010001000000";
        ram[35] = "0b11000100101011111011111100000";
        ram[36] = "0b11001100100011100011101000111";
        ram[37] = "0b11100101100101100100110110100";
        ram[38] = "0b01000101110000010110010000000";
        ram[39] = "0b10001011010111010001001001111";
        ram[40] = "0b01001011111100110011111101111";
        ram[41] = "0b10000001010100010010000101111";
        ram[42] = "0b11110100111100111000100100010";
        ram[43] = "0b11111101010001000011111000101";
        ram[44] = "0b11100101101001011010011010000";
        ram[45] = "0b00111000111101010101000001000";
        ram[46] = "0b11101001111000001110100001000";
        ram[47] = "0b00100100111111001110010110111";
        ram[48] = "0b11100110101011000100011000011";
        ram[49] = "0b01010001110100100011011110000";
        ram[50] = "0b11111111010101011110010001001";
        ram[51] = "0b11110101001110100010000010111";
        ram[52] = "0b11101011101010100001101101011";
        ram[53] = "0b11010010111001011011101010000";
        ram[54] = "0b01101101011000011111001111111";
        ram[55] = "0b11101100010000000101000111000";
        ram[56] = "0b00010110000110100010001001000";
        ram[57] = "0b01010111101001010001101100000";
        ram[58] = "0b11001010100011101000101101111";
        ram[59] = "0b00100001011010001011101000111";
        ram[60] = "0b10111101010101111011111000000";
        ram[61] = "0b11100011100000001011110011111";
        ram[62] = "0b01000110101101010101100011111";
        ram[63] = "0b11000101001010111010000011000";
        ram[64] = "0b00001110001000100110100101010";
        ram[65] = "0b00011001000100010001001100111";
        ram[66] = "0b00100111000010011100100001000";
        ram[67] = "0b10000011110000101000010101111";
        ram[68] = "0b11111010010001011110010110100";
        ram[69] = "0b00001110110010000001001010101";
        ram[70] = "0b00111010101111100010001101111";
        ram[71] = "0b00100101010010010011001001000";
        for (unsigned i = 72; i < 4608 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000";
        }


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();


SC_METHOD(prc_write_1);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


void prc_write_1()
{
    if (ce1.read() == sc_dt::Log_1) 
    {
            if(address1.read().is_01() && address1.read().to_uint()<AddressRange)
              q1 = ram[address1.read().to_uint()];
            else
              q1 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(dut_perform_conv_w_conv1_2) {


static const unsigned DataWidth = 29;
static const unsigned AddressRange = 4608;
static const unsigned AddressWidth = 13;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in<sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


dut_perform_conv_w_conv1_2_ram* meminst;


SC_CTOR(dut_perform_conv_w_conv1_2) {
meminst = new dut_perform_conv_w_conv1_2_ram("dut_perform_conv_w_conv1_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~dut_perform_conv_w_conv1_2() {
    delete meminst;
}


};//endmodule
#endif
