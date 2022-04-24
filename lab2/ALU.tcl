read_file -format verilog {src/ALU.v}
Current design is 'ALU'
analyze -library WORK -format verilog {src/ALU.v}
elaborate ALU -architecture verilog -library WORK
compile -exact_map
write -hierarchy -format verilog -output src/ALU_syn.v
write_sdf -version 1.0 -context verilog ALU.sdf
exit
