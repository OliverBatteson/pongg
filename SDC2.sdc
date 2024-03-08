set_time_format -unit ns -decimal_places 3
# ##############################################################################  Create Input reference clocks
create_clock -name {MAX10_CLK1_50} -period 20.000 -waveform { 0.000 10.000 } 
create_clock -name {ADC_CLK_10} -period 100.000 -waveform { 0.000 50.000 } 
# create_clock -name {VS} -period 16666666.667 -waveform { 0.000 80.000 } 
# ##############################################################################  Now that we have created the custom clocks which will be base clocks,#  derive_pll_clock is used to calculate all remaining clocks for PLLs
derive_pll_clocks -create_base_clocks
derive_clock_uncertainty
