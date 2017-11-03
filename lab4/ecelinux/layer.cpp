//==========================================================================
//layer.cpp
//==========================================================================
// @brief: this file contains all layers

#include <stdio.h>

#include "model_conv.h"
#include "layer.h"

//----------------------------------------------------------
// Perform Convolution Layer
//----------------------------------------------------------
// @param[in] : input - input fmaps
//              weight - filters
//              bias - biases
//              M - number of input fmaps
//              N - number of output fmaps
//              O - width of output fmaps
// @param[out] : output - output fmaps

void perform_conv(fixed32_t input[MAX_FMAP], fixed32_t output[MAX_FMAP], const fixed32_t weight[MAX_W_CONV], const fixed32_t bias[MAX_B_CONV], int M, int N, int O) {

  bit32_t I = (bit32_t)O+K-1;
  bit32_t ifmap_size = I*I;
  bit32_t ofmap_size = O*O;
  bit32_t i_index;
  bit32_t w_index;
  bit32_t o_index;
  fixed32_t sum = 0;
  // initialize output fmaps
  for (bit32_t i = 0; i < MAX_FMAP; i++) output[i] = 0;

  // perform convolution kernel

//#pragma HLS dataflow
       for (bit32_t n = 0; n < N; n++) {
         for (bit32_t m = 0; m < M; m++) {

     for (bit32_t x = 0; x < O; x++) {

LOOP1:    for (bit32_t y = 0; y < O; y++) {
            for (bit32_t c = 0; c < K; c++) {
             for (bit32_t r = 0; r < K; r++) {
                    i_index = x + c + (y + r) * I + m * ifmap_size;
                    w_index = c + r * K + (n * M + m) * FILTER_SIZE;
                   // o_index = x + y * O + n * ofmap_size;
              //TODO: finish the innermost loop
	             sum += input[i_index]*weight[w_index];

	            //output[o_index]= sum;

			//sum = 0;
            }


          }

                 o_index = x + y * O + n * ofmap_size;
	             output[o_index]+= sum;
				 sum = 0;

        }



      }


    }


  }
 
  // add biases and perform ReLU
  bit32_t index;
  fixed32_t biased;
  for (bit32_t n = 0; n < N; n++) {

LOOP2:    for (bit32_t x = 0; x < O; x++) {
      for (bit32_t y = 0; y < O; y++) {
         index = x + y * O + n * ofmap_size;
         biased = output[index] + bias[n];
        output[index] = (biased > 0) ? biased : (fixed32_t)0; 
      }
    }
  }
 
}

//----------------------------------------------------------
// Reshpae the Output from Conv Layer
//----------------------------------------------------------
// @param[in] : input - output fmaps from the last conv layer
// @param[out] : output - input famps of the first dense layer

void reshape(float* input, float* output) {
int o_index;
int i_index;
  for (int c = 0; c < 64; c++) {
    for ( int y = 0; y < 3; y++) {
      for (int x = 0; x < 3; x++) {
         o_index = c + (2 - x + (2-y) * 3 ) * 64;
         i_index = x + y * 3 + c * 9;
        output[o_index] = input[i_index];
      }
    }
  }
}

//----------------------------------------------------------
// Perform Dense Layer
//----------------------------------------------------------
// @param[in] : input - input fmaps
//              weight - weights
//              bias - biases
//              M - number of input fmaps
//              N - number of output fmaps
// @param[out] : output - output fmaps

void perform_dense (float* input, float*output, const float*weight, const float* bias, int M, int N) {
float biased;
int w_index;
  for (int n = 0; n < N; n++) {
    for (int m = 0; m < M; m++) {
      w_index = m + n * M;
      output[n] += input[m] * weight[w_index];
    }
     biased = output[n] + bias[n];
    output[n] = (biased > 0) ? biased : 0;
  }

}

