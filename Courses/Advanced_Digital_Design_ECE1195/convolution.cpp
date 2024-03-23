/*------------------------------------------------------------------------------
--                                                                            --
--       .oooooo..o ooooo   ooooo ooooooooo.   oooooooooooo   .oooooo.        --
--      d8P'    `Y8 `888'   `888' `888   `Y88. `888'     `8  d8P'  `Y8b       --
--      Y88bo.       888     888   888   .d88'  888         888               --
--       `"Y8888o.   888ooooo888   888ooo88P'   888oooo8    888               --
--           `"Y88b  888     888   888`88b.     888    "    888               --
--      oo     .d8P  888     888   888  `88b.   888       o `88b    ooo       --
--      8""88888P'  o888o   o888o o888o  o888o o888ooooood8  `Y8bood8P'       --
--                                                                            --
--------------------------------------------------------------------------------
-- Vivado HLS 2D Convolutional Accelerator          author: Sebastian Sabogal --
--------------------------------------------------------------------------------
--                                                                            --
-- Copyright (C) 2020 SHREC.                                                  --
--                                                                            --
-- This file is part of HLS-2D-CONV.                                          --
--                                                                            --
-- HLS-2D-CONV is free software; you can redistribute it and/or modify        --
-- it under the terms of the GNU General Public License as published by the   --
-- Free Software Foundation; either version 3, or (at your option) any later  --
-- version.                                                                   --
-- HLS-2D-CONV is distributed in the hope that it will be useful, but         --
-- WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License   --
-- for more details.                                                          --
-- You should have received a copy of the GNU General Public License along    --
-- with HLS-2D-CONV; see the file LICENSE.  If not see                        --
-- <http://www.gnu.org/licenses/>.                                            --
--                                                                            --
------------------------------------------------------------------------------*/

#include "convolution.hpp"

// kernel to be used for convolution
int8_t kern[K * K] = {
	1, 1, 1,
	1, -8, 1,
	1, 1, 1
};

uint8_t shift_div = 0;


// software convolution function
void sw_conv(uint8_t *A, uint8_t *B)
{
	// A is the input picture and B is the output picture.
	// Note, these two arrays are 1D arrays, arranged row after row.
	
	// TODO
	
	// write the implementation of the software convolution function.
	// Couple of Hints:
	// 	1. figure out the limit of the loops that would scan the kernel over the image.
	//	2. have a variable of type int32_t to be used as the result of the convolution process. make sure to clear it before each convolution step.
	//	3. figure out the limit of the loops that would do the convolution (i.e. multiply th kernel with the corresponding pixels.
	//	4. in those loops, figure out the correct indexing method to access A (remember that A is a 1D image)
	// 	5. when you are done calculating the result, shift it to the right by the value shift_div defined above.
	//	6. before assigning the result to the corresponding pixel in B. make sure to check for saturation as follows:
	//		if the result > 0xFF then it should be clamped to 0xFF
	//		if less than 0, then it should be clamped to 0
	//		otherwise, it should be the same value.

	int32_t res;

	for (int x=0; x < IMG_HEIGHT-K+1; ++x) {
		//res = 0;
		for (int y=0; y < IMG_WIDTH-K+1; ++y) {
			res=0;
			for (int z=0; z < K; ++z) {
					for (int w=0; w<K; ++w) {
						res += A[IMG_WIDTH*(x+z) + (y+w)]*kern[K*z + w];
					}
			}

			if (res > 0xFF) {res=0xFF;}
			if (res < 0) {res=0;}
			B[IMG_WIDTH*x+y]=res;
		}
	}

}

void hw_conv(stream_t &sin, stream_t &sout)
{
	
	// directives to assign ports
#	pragma HLS INTERFACE ap_ctrl_none port=return
#	pragma HLS INTERFACE axis port=sin
#	pragma HLS INTERFACE axis port=sout

	uint8_t kbuf[K][K];					// the buffer used pixels to be multiplied by the kernel
	uint8_t lbuf[K-1][IMG_WIDTH - K];	// the line buffer used for pixels in between the pixels multiplied by the kernel. (see lecture slides)


	// directives to partition these arrays
#	pragma HLS ARRAY_PARTITION variable=kbuf complete dim=0
#	pragma HLS ARRAY_PARTITION variable=lbuf complete dim=1

	int32_t result;		// variable to store the conv result
	uint8_t tail0 = 0;
	uint8_t tail1 = 0;

	// a pipelined loop to go through all stream length + a delay (till the first convoluted pixel is correct.)
	for (int i = 0; i < STREAM_LENGTH + DELAY; ++i) {
		
		// pipeline directive
#		pragma HLS PIPELINE II=1

		/* Sliding Window */
		{
			// TODO
			
			// write code to shift pixels through first set (0 .. K-2) of kernel/line buffers
			// Hints:
			//	1. make sure to unroll all the loops written in this part to speed things up. use the command "# pragma HLS UNROLL"
			//	2. kbuf and ibuf can be index as a normal 2D array.

/*
			for (int a=0; a < K-1; ++a) {
				#pragma HLS UNROLL
				kbuf[0][a]=kbuf[0][a+1];
			}
			kbuf[0][2]=lbuf[0][0];


			for (int b=0; b < IMG_WIDTH - K; ++b){
				#pragma HLS UNROLL
				lbuf[0][b]=lbuf[0][b+1];
			}

			// write code to shift pixels through last (K-1) kernel buffer
			// Hints:
			//	1. make sure to unroll all the loops written in this part to speed things up. use the command "# pragma HLS UNROLL"

			lbuf[0][IMG_WIDTH - K - 1]=kbuf[K-2][0];

			for (int a=0; a < K-1; ++a){
				#pragma HLS UNROLL
				kbuf[K-2][a]=kbuf[K-2][a+1];
				//kbuf[1][K-1]=lbuf[1][0];
			}
			kbuf[K-2][K-1]=lbuf[1][0];

			for (int b=0; b < IMG_WIDTH - K; ++b){
				#pragma HLS UNROLL
				lbuf[1][b]=lbuf[1][b+1];
			}

			lbuf[K-2][IMG_WIDTH - K - 1]=kbuf[K-1][0] ;

			for (int a=0; a < K-1; ++a){
				#pragma HLS UNROLL
				kbuf[K-1][a]=kbuf[K-1][a+1];
			}
*/

			//lbuf[K-2][IMG_WIDTH - K - 1]=kbuf[K-1][0] ;
			// write code to insert pixel into last pixel of K-1 kernel buffer
			// Hints:
			//	1. make sure that you only read in a new beat_t from the input stream as long as i < STREAM_LENGTH
			//	2. define a beat_t variable.
			//	3. use sin >> (your defined variable) to read in a beat from the input stream
			//	4. assign the value of .data(7,0) member function of your beat_t variable to the last pixel of K-1 kernel buffer
			



// ------------------- line buffers as ring buffers ---------------------------------------//
			for (int a=0; a < K-1; ++a) {
				#pragma HLS UNROLL
				kbuf[0][a]=kbuf[0][a+1];
			}

			kbuf[0][2]=lbuf[0][i%(IMG_WIDTH-K)];  // here instead of shifting I used modulo to jump to different location in lbuf
			lbuf[0][i%(IMG_WIDTH-K)]=kbuf[1][0];  // input values will be stored in lbuf from location 0 to IMG_WIDTH-K, kbuf[1][0] will be
													// equal to lbuf[0][0] first (first input value), then lbuf[0][1], then lbuf[0][2], etc...
													// When lbuf is full, (i%IMG_WIDTH-K) is used so that lbuf[0][0] (older value)
													// gets replaced with the newer value, then lbuf[0][1], then lbuf[0][2], etc...
			for (int a=0; a < K-1; ++a){
				#pragma HLS UNROLL
				kbuf[K-2][a]=kbuf[K-2][a+1];
			}

			if (i > IMG_WIDTH - K - 1){         // same concept here but we want to make sure that lbuf is full before we start reading values
												// to kbuf[1][2] (which is why we have the condition). The reason behind this is that unlike
			kbuf[K-2][K-1]=lbuf[1][i%(IMG_WIDTH-K)];  // the first implementation with shift registers, values are being store in lbuf from
														// location 0 to IMG_WIDTH - K here, and then using the modulo the older values (at lower
													// locations) will get replaced with the newer ones after lbuf is full (when i reaches IMG_WIDTH-K-1)
			}

			lbuf[1][i%(IMG_WIDTH-K)]=kbuf[K-1][0];

			for (int a=0; a < K-1; ++a){
				#pragma HLS UNROLL
				kbuf[K-1][a]=kbuf[K-1][a+1];
			}




			if (i<STREAM_LENGTH){

			beat_t input;
			sin >> input;
			kbuf[K-1][K-1] = input.data(7,0);
			}


		}

		/* Convolution */
		{
			// TODO
			
			// write code to implement the convolution operation.
			// Hints:
			//	1. reset the variable result before each conv operation.
			//	2. write loops to do the multiplication and accumulation in the result variable. use the command "# pragma HLS UNROLL"
			//	3. in those loops, figure out the correct indexing method to kernel kern (remember that kern is a 1D image)
			//	4. when you are done calculating the result, shift it to the right by the value shift_div defined above.
			//	5. make sure to check for saturation in the result variable as follows:
			//		if the result > 0xFF then it should be clamped to 0xFF
			//		if less than 0, then it should be clamped to 0
			//		otherwise, it should be the same value.


			result=0;
			for (int a=0; a < K; ++a){
				for (int b=0; b < K; ++b){
					#pragma HLS UNROLL
					result += kbuf[a][b]*kern[K*a+b];
				}
			}

			if (result > 0xFF) {result = 0xFF;}
			if (result<0) {result = 0;}

			
			// generate a beat_t object with the convoluted pixel and sending it the output stream
			// this is only done after a delay to ensure that we have calculated the correct pixel at the beginning

			if (i >= DELAY) {
				beat_t val;
				val.data(7, 0) = result;
				val.keep(0, 0) = 0x1;
				val.last.set_bit(0, i == STREAM_LENGTH + DELAY - 1);
				sout << val;
			}
		}
	}
}
