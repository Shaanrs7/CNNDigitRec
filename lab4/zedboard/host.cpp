#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<fcntl.h>
#include<math.h>
#include<assert.h>

#include<iostream>
#include<fstream>

#include "typedefs.h"
#include "timer.h"
#include "model_dense.h"
#include "layer.h"

//------------------------------------------------------------------------
// Helper function for hex to int conversion
//------------------------------------------------------------------------
int64_t hexstring_to_int64 (std::string h) {
  int64_t x = 0;
  for (int i = 0; i < h.length(); ++i) {
    char c = h[i];
    int k = (c > '9') ? toupper(c)-'A'+10 : c - '0';
    x = x*16 + k;
  }
  return x;
}

//--------------------------------------
// main function
//--------------------------------------
int main(int argc, char** argv)
{
  // Open channels to the FPGA board.
  // These channels appear as files to the Linux OS
  int fdr = open("/dev/xillybus_read_32", O_RDONLY);
  int fdw = open("/dev/xillybus_write_32", O_WRONLY);

  // Check that the channels are correctly opened
  if ((fdr < 0) || (fdw < 0)) {
    fprintf (stderr, "Failed to open Xillybus device channels\n");
    exit(-1);
  }
  
  // Output file that saves the test bench results
  std::ofstream outfile;
  outfile.open("out.dat");
  
  // Read input file for the testing set
  std::string line;
  std::ifstream myfile ("data/testing_set.dat");
  
  // Number of test instances
  const int N = 180;
  
  // Arrays to store test data and expected results
  digit inputs[N];
  int   outputs[N];
  int   expected[N];

  // Timer
  Timer timer("digitrec FPGA");
  
  int nbytes;
  int error = 0;
  int num_test_insts = 0;
  float conv_result[576];


  if ( myfile.is_open() ) {
    
    //--------------------------------------------------------------------
    // Read data from the input file into two arrays
    //--------------------------------------------------------------------
    for (int i = 0; i < N; ++i) {
      assert( std::getline( myfile, line) );
      // Read handwritten digit input
      std::string hex_digit = line.substr(2, line.find(",")-2);
      digit input_digit = hexstring_to_int64 (hex_digit);
      // Read expected digit
      int input_value =
          strtoul(line.substr(line.find(",") + 1,
                              line.length()).c_str(), NULL, 10);
   
      // Store the digits into arrays
      inputs[i] = input_digit;
      expected[i] = input_value;
    }

    timer.start();
    //--------------------------------------------------------------------
    // Send data to accelerator
    //--------------------------------------------------------------------
    for (int i = 0; i < N; ++i) {
      // Convert to int64
      int64_t input = inputs[i].to_int64();

      // Send bytes through the write channel
      nbytes = write (fdw, (void*)&input, sizeof(input));
      assert (nbytes == sizeof(input));
    }
    //--------------------------------------------------------------------
    // Receive data from the accelerator
    //--------------------------------------------------------------------
    for (int i = 0; i < N; ++i) {
      // Receive bytes through the read channel
      bit32_t output;

      union_f_i data;

      for (int j = 0; j < 576; j++) {
        nbytes = read (fdr, (void*)&output, sizeof(output));
	data.i = output.to_int();
        conv_result[j] = data.f;
      }

      //perform dense layer
      float dense_input[576];
      float dense1[256];
      float dense2[256];
      float dense3[10];

      for (int j = 0; j < 256; j++) {
        if (j < 10) dense3[j] = 0;
        dense1[j] = 0;
        dense2[j] = 0;
      }

      reshape(conv_result, dense_input);
      perform_dense(dense_input, dense1, w_dense1, b_dense1, 576, 256);
      perform_dense(dense1, dense2, w_dense2, b_dense2, 256, 256);
      perform_dense(dense2, dense3, w_dense3, b_dense3, 256, 10);

      float max = -50;
      outputs[i] = 0;
      for (int j = 0; j < 10; j++) {
        if (dense3[j] > max) {
          outputs[i] = j;
          max = dense3[j];
        }
      }

      num_test_insts++;
    }   
    
    timer.stop();
    
    //--------------------------------------------------------------------
    // Verify results
    //--------------------------------------------------------------------
    for (int i = 0; i < N; ++i) {
      // Print result messages to console
      std::cout << "#" << std::dec << i+1;
      std::cout << ": \tTestInstance=" << std::hex << inputs[i];
      std::cout << " \tInterpreted=" << outputs[i] 
                << " \tExpected=" << expected[i];
      outfile << "#" << std::dec << i+1;
      outfile << ": \tTestInstance=" << std::hex << inputs[i];
      outfile << " \tInterpreted=" << outputs[i] 
              << " \tExpected=" << expected[i];
      
      // Check for any difference between k-NN interpreted digit vs. expected digit
      if ( outputs[i] != expected[i] ) {
        error++;
        std::cout << " \t[Mismatch!]";
        outfile << " \t[Mismatch!]";
      }
      
      std::cout << std::endl;
      outfile << std::endl;
    }
    
    // Report overall error out of all testing instances
    std::cout << "Number of test instances = " << num_test_insts << std::endl;
    std::cout << "Overall Error Rate = " << std::setprecision(3)
              << ( (double)error / num_test_insts ) * 100
              << "%" << std::endl;
    outfile << "Number of test instances = " << num_test_insts << std::endl;
    outfile << "Overall Error Rate = " << std::setprecision(3)
            << ( (double) error / num_test_insts ) * 100 
            << "%" << std::endl;

    // Close input file for the testing set
    myfile.close();
  }
  else
      std::cout << "Unable to open file for the testing set!" << std::endl; 
  
  // Close output file
  outfile.close();

  return 0;
}
