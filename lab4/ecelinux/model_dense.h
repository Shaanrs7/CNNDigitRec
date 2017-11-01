#ifndef MODEL_DENSE_H
#define MODEL_DENSE_H

#include "ap_fixed.h"

const float w_dense1[147456] = { 
  #include "data/weight_5.dat" 
};

const float b_dense1[256] = {
  #include "data/weight_6.dat"
};

const float w_dense2[65536] = { 
  #include "data/weight_7.dat" 
};

const float b_dense2[256] = {
  #include "data/weight_8.dat"
};

const float w_dense3[2560] = { 
  #include "data/weight_9.dat" 
};

const float b_dense3[10] = {
  #include "data/weight_10.dat"
};


#endif
