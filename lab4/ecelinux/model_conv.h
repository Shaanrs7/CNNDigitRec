#ifndef MODEL_CONV_H
#define MODEL_CONV_H

#include "ap_fixed.h"
#include "typedefs.h"
const int K = 3;
const int FILTER_SIZE = K*K;
const int MAX_W_CONV = FILTER_SIZE * 32 * 64; //{1*32, 32*64}
const int MAX_B_CONV = 64; //{32, 64}
const int MAX_FMAP = 800; //{7*7*1, 5*5*32, 3*3*64}

const fixed32_t w_conv1[MAX_W_CONV] = { //288 
  #include "data/weight_1.dat" 
};

const fixed32_t b_conv1[MAX_B_CONV] = { //32
  #include "data/weight_2.dat"
};

const fixed32_t w_conv2[MAX_W_CONV] = { //18432
  #include "data/weight_3.dat" 
};

const fixed32_t b_conv2[MAX_B_CONV] = { //64
  #include "data/weight_4.dat"
};

#endif
