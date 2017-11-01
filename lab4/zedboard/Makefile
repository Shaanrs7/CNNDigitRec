#==========================================================================
# Makefile
#==========================================================================
# @brief: A makefile the compiles and runs the digitrec program
#
# @desc: 1. "make" or "make sw" runs software execution by default
#        2. "make fpga" invokes the HW accelerator
#        3. "make clean" cleans up the directory


INC_PATH=/usr/include/vivado_hls/2015.2
CFLAGS = -I${INC_PATH}

all: sw

sw: cnn.cpp cnn_test.cpp layer.cpp
	@echo "Compiling & executing cnn software program on ARM ..."
	g++ ${CFLAGS} $^ -o cnn-arm
	./cnn-arm

fpga: host.cpp layer.cpp
	@echo "Compiling host program & running cnn accelerator ..."
	g++ ${CFLAGS} $^ -o cnn-fpga
	./cnn-fpga

# Clean up the directory before submission
clean:
	@echo "Clean up output files"
	rm -rf cnn-sw vivado_hls.log *.prj result out.dat *~
	rm -rf cnn-fpga
