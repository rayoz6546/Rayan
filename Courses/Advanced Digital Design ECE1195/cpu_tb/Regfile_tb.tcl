restart

#forcing a clock with 10 ns period
add_force CLK 1 {0 5ns} -repeat_every 10ns

#give a reset signal

add_force RST 0
run 2500 ps

add_force RST 1
run 5 ns

add_force RST 0

run 200 ns

add_force ReadReg1 -radix bin 00000
add_force ReadReg2 -radix bin 11111
add_force RegWrite -radix bin 0


run 20 ns

add_force ReadReg1 -radix bin 00000
add_force ReadReg2 -radix bin 11111
add_force RegWrite -radix bin 1
add_force WriteReg -radix bin 00011
add_force WriteData -radix hex 345FFFEE

run 20 ns

add_force ReadReg1 -radix bin 00000
add_force ReadReg2 -radix bin 11111
add_force RegWrite -radix bin 1
add_force WriteReg -radix bin 00001
add_force WriteData -radix hex 22223333

run 20 ns

add_force ReadReg1 -radix bin 00011
add_force ReadReg2 -radix bin 11111
add_force RegWrite -radix bin 0

run 20 ns

add_force ReadReg1 -radix bin 00001
add_force ReadReg2 -radix bin 00011
add_force RegWrite -radix bin 0


run 20 ns

add_force ReadReg1 -radix bin 00000
add_force ReadReg2 -radix bin 11111
add_force RegWrite -radix bin 1
add_force WriteReg -radix bin 00000
add_force WriteData -radix hex 66663333

run 20 ns






