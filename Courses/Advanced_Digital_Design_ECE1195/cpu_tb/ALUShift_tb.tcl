restart

add_force A -radix bin 00000000000000000111111111011111

add_force SHAMT -radix bin 00000000000000000000000000000100

add_force ALUOp -radix bin 0001 

run 10ns

add_force A -radix bin 10000000000000000111111111011111

add_force SHAMT -radix bin 00000000000000000000000000000100

add_force ALUOp -radix bin 0010

run 10 ns

add_force A -radix bin 10000000000000000111111111011111

add_force SHAMT -radix bin 00000000000000000000000000000100

add_force ALUOp -radix bin 0011

run 10 ns
