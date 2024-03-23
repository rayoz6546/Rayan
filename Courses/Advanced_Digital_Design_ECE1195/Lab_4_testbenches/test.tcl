restart 

add_force instruction -radix hex {20070011}

#forcing a clock with 10 ns period
add_force clk 1 {0 5ns} -repeat_every 10ns

#give a reset signal
add_force reset 0
run 2500ps
add_force reset 1
run 5 ns
add_force reset 0

run 200 ns