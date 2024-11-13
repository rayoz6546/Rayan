restart

add_force A -radix hex 00000002
add_force B -radix hex 0000000A
add_force ALUOp -radix bin 1100

run 20 ns


add_force A -radix hex 00000002
add_force B -radix hex 0000000A
add_force ALUOp -radix bin 1111

run 20 ns

add_force A -radix hex 0000000E
add_force B -radix hex FEDCBA98
add_force ALUOp -radix bin 1111

run 20 ns
