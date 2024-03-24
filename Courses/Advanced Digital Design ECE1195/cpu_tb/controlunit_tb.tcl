restart

#forcing a clock with 10 ns period
add_force CLK 1 {0 5ns} -repeat_every 10ns

#give a reset signal
add_force RST 0
run 2500ps
add_force RST 1
run 5 ns
add_force RST 0

run 200 ns

add_force Opcode -radix bin 001000
add_force func -radix bin 100100

run 100 ns


add_force Opcode -radix bin 000000
add_force func -radix bin 100100

run 100 ns


