
read_file -format verilog {src/PAT.v}
analyze -library WORK -format verilog {src/PAT.v}
elaborate PAT -architecture verilog -library WORK
create_clock -name "clk" -period 50 -waveform {0 25} {clk}
compile -exact_map
write -hierarchy -format verilog -output build/PAT_syn.v
write_sdf -version 1.0 -context verilog build/PAT.sdf
exit