# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Fri Jan 09 14:33:57 CET 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design top_conv3x3

create_clock -name "clkin\/designs\/top_conv3x3\/ports_in\/\*" -period 7.0 -waveform {5.6 5.6} 
create_clock -name "clk\/designs\/top_conv3x3\/ports_in\/\*" -period 7.0 -waveform {5.6 5.6} 
create_clock -name "clk" -period 2.45 -waveform {1.9600000000 1.9600000000} [list \
  [get_ports pixel_valid]  \
  [get_ports {pixel_in[0]}]  \
  [get_ports {pixel_in[1]}]  \
  [get_ports {pixel_in[2]}]  \
  [get_ports {pixel_in[3]}]  \
  [get_ports {pixel_in[4]}]  \
  [get_ports {pixel_in[5]}]  \
  [get_ports {pixel_in[6]}]  \
  [get_ports {pixel_in[7]}]  \
  [get_ports {pixel_in[8]}]  \
  [get_ports {pixel_in[9]}]  \
  [get_ports {pixel_in[10]}]  \
  [get_ports {pixel_in[11]}]  \
  [get_ports {pixel_in[12]}]  \
  [get_ports {pixel_in[13]}]  \
  [get_ports {pixel_in[14]}]  \
  [get_ports {pixel_in[15]}]  \
  [get_ports rst_n]  \
  [get_ports clk] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports pixel_valid]
set_input_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_in[0]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_in[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_in[2]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_in[3]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_in[4]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_in[5]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_in[6]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_in[7]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_in[8]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_in[9]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_in[10]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_in[11]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_in[12]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_in[13]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_in[14]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_in[15]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports rst_n]
set_input_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports clk]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports valid_out]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[0]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[1]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[2]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[3]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[4]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[5]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[6]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[7]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[8]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[9]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[10]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[11]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[12]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[13]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[14]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[15]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[16]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[17]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[18]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[19]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[20]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[21]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[22]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[23]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[24]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[25]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[26]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[27]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[28]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[29]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[30]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [get_ports {pixel_out[31]}]
set_wire_load_mode "enclosed"
