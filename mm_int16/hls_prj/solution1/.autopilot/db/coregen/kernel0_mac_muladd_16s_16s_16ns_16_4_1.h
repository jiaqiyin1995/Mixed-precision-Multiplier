// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __kernel0_mac_muladd_16s_16s_16ns_16_4_1__HH__
#define __kernel0_mac_muladd_16s_16s_16ns_16_4_1__HH__
#include "kernel0_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(kernel0_mac_muladd_16s_16s_16ns_16_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    kernel0_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 kernel0_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U;

    SC_CTOR(kernel0_mac_muladd_16s_16s_16ns_16_4_1):  kernel0_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U ("kernel0_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U") {
        kernel0_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U.clk(clk);
        kernel0_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U.rst(reset);
        kernel0_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U.ce(ce);
        kernel0_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U.in0(din0);
        kernel0_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U.in1(din1);
        kernel0_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U.in2(din2);
        kernel0_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U.dout(dout);

    }

};

#endif //
