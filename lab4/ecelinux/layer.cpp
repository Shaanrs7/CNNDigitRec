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
	
int w_index;
float biased;
  for (int n = 0; n < N; n=n+4) {
    for (int m = 0; m < M; m=m+2) {
       w_index = m + n * M;
      output[n] = output[n] + input[m] * weight[w_index] + input[m+1] * weight[w_index+1];// +  input[m+2] * weight[w_index+2] +  output[n] + input[m+3] * weight[w_index+3];
      output[n+1] = output[n+1] + input[m] * weight[w_index+M] + input[m+1] * weight[w_index+M+1];// +  input[m+2] * weight[w_index+2] +  output[n] + input[m+3] * weight[w_index+3];
      output[n+2] = output[n+2] + input[m] * weight[w_index+2*M] + input[m+1] * weight[w_index+2*M+1];// +  input[m+2] * weight[w_index+2] +  output[n] + input[m+3] * weight[w_index+3];
      output[n+3] = output[n+3] + input[m] * weight[w_index+3*M] + input[m+1] * weight[w_index+3*M+1];// +  input[m+2] * weight[w_index+2] +  output[n] + input[m+3] * weight[w_index+3];
/*      output[n+4] = output[n+4] + input[m] * weight[w_index+4*M] + input[m+1] * weight[w_index+4*M+1];// +  input[m+2] * weight[w_index+2] +  output[n] + input[m+3] * weight[w_index+3];
      output[n+5] = output[n+5] + input[m] * weight[w_index+5*M] + input[m+1] * weight[w_index+5*M+1];// +  input[m+2] * weight[w_index+2] +  output[n] + input[m+3] * weight[w_index+3];
      output[n+6] = output[n+6] + input[m] * weight[w_index+6*M] + input[m+1] * weight[w_index+6*M+1];// +  input[m+2] * weight[w_index+2] +  output[n] + input[m+3] * weight[w_index+3];
      output[n+7] = output[n+7] + input[m] * weight[w_index+7*M] + input[m+1] * weight[w_index+7*M+1];// +  input[m+2] * weight[w_index+2] +  output[n] + input[m+3] * weight[w_index+3];
      output[n+8] = output[n+8] + input[m] * weight[w_index+8*M] + input[m+1] * weight[w_index+8*M+1];// +  input[m+2] * weight[w_index+2] +  output[n] + input[m+3] * weight[w_index+3];
      output[n+9] = output[n+9] + input[m] * weight[w_index+9*M] + input[m+1] * weight[w_index+9*M+1];// +  input[m+2] * weight[w_index+2] +  output[n] + input[m+3] * weight[w_index+3];
      output[n+10] = output[n+10] + input[m] * weight[w_index+10*M] + input[m+1] * weight[w_index+10*M+1];// +  input[m+2] * weight[w_index+2] +  output[n] + input[m+3] * weight[w_index+3];
      output[n+11] = output[n+11] + input[m] * weight[w_index+11*M] + input[m+1] * weight[w_index+11*M+1];// +  input[m+2] * weight[w_index+2] +  output[n] + input[m+3] * weight[w_index+3];
      output[n+12] = output[n+12] + input[m] * weight[w_index+12*M] + input[m+1] * weight[w_index+12*M+1];// +  input[m+2] * weight[w_index+2] +  output[n] + input[m+3] * weight[w_index+3];
      output[n+13] = output[n+13] + input[m] * weight[w_index+13*M] + input[m+1] * weight[w_index+13*M+1];// +  input[m+2] * weight[w_index+2] +  output[n] + input[m+3] * weight[w_index+3];
      output[n+14] = output[n+14] + input[m] * weight[w_index+14*M] + input[m+1] * weight[w_index+14*M+1];// +  input[m+2] * weight[w_index+2] +  output[n] + input[m+3] * weight[w_index+3];
      output[n+15] = output[n+15] + input[m] * weight[w_index+15*M] + input[m+1] * weight[w_index+15*M+1];// +  input[m+2] * weight[w_index+2] +  output[n] + input[m+3] * weight[w_index+3];
*/

    }
     biased = output[n] + bias[n];
    output[n] = (biased > 0) ? biased : 0;
    
 biased = output[n+1] + bias[n+1];
    output[n+1] = (biased > 0) ? biased : 0;

     biased = output[n+2] + bias[n+2];
    output[n+2] = (biased > 0) ? biased : 0;

     biased = output[n+3] + bias[n+3];
    output[n+3] = (biased > 0) ? biased : 0;
/*
     biased = output[n+4] + bias[n+4];
    output[n+4] = (biased > 0) ? biased : 0;

     biased = output[n+5] + bias[n+5];
    output[n+5] = (biased > 0) ? biased : 0;

     biased = output[n+6] + bias[n+6];
    output[n+6] = (biased > 0) ? biased : 0;

     biased = output[n+7] + bias[n+7];
    output[n+7] = (biased > 0) ? biased : 0;

     biased = output[n+8] + bias[n+8];
    output[n+8] = (biased > 0) ? biased : 0;

     biased = output[n+9] + bias[n+9];
    output[n+9] = (biased > 0) ? biased : 0;

     biased = output[n+10] + bias[n+10];
    output[n+10] = (biased > 0) ? biased : 0;

     biased = output[n+11] + bias[n+11];
    output[n+11] = (biased > 0) ? biased : 0;

     biased = output[n+12] + bias[n+12];
    output[n+12] = (biased > 0) ? biased : 0;

     biased = output[n+13] + bias[n+13];
    output[n+13] = (biased > 0) ? biased : 0;

     biased = output[n+14] + bias[n+14];
    output[n+14] = (biased > 0) ? biased : 0;

     biased = output[n+15] + bias[n+15];
    output[n+15] = (biased > 0) ? biased : 0;
 */ }

}

