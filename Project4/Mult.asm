// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.
// n = r0
// sum = 0
// for (i = 0; i < n; i++) {
//  	sum += r1 	
// }

	@R2
	M = 0

	@R0
	D = M  // D = Memory[R0]
	@n
	M = D  // n = R[0]
	@END
	D;JLT

	@R1
	D = M
	@END
	D;JLT

	@i
	M = 0
	@sum
	M = 0

(LOOP)
	// if (i == n) jump to end 
	@i
	D = M
	@n
	D = D - M
	@RESULT
	D;JEQ

	// sum += r1 
	@R1
	D = M
	@sum 
	M = M + D 

	// i++
	@i
	M = M + 1

	@LOOP
	0;JMP


(RESULT)
	@sum
	D = M
	@R2
	M = D

	@END
	0;JMP


(END)
	@END
	0;JMP

