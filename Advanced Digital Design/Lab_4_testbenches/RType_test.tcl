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

add_force MemoryDataIn -radix hex 20070011
#add_force MemoryDataIn -radix hex 200BFFFD
#add_force MemoryDataIn -radix hex 00EB5824

run 200 ns





