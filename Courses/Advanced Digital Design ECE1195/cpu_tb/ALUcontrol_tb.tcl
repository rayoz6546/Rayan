restart

add_force Opcode -radix bin 001000
add_force ALUOp -radix bin 010

run 20 ns

add_force func -radix bin 100100
add_force ALUOp -radix bin 100

run 20 ns 
