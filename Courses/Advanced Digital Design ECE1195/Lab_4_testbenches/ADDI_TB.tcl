restart

add_force RegFile_WriteReg 00001
add_force RegFile_WriteData -radix dec 69
add_force RegWrite_sig 1

add_force Clock 1 {0 5ns} -repeat_every 10ns
run 20 ns



add_force MemData 001000000000000001000010
run 100 ns