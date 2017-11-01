//===========================================================================
// cnn.h
//===========================================================================
// @brief: This header file defines the interface for the core functions.

#ifndef CNN_H
#define CNN_H

#include<hls_stream.h>

#include "typedefs.h"

// Top function for synthesis
void dut(
    hls::stream<bit32_t> &strm_in,
    hls::stream<bit32_t> &strm_out
);

// Top function for cnn accelerator
void cnn_xcel(digit input, bit32_t* output);
#endif
