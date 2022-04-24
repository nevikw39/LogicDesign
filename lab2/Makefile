head = header.v
nc = ncverilog

nc_option = +access+r

# The file name of testbench.
tb = tests/ALU_tb.v

# The file name of our modules.
others = src/ALU.v
others_syn = build/ALU_syn.v -v /theda21_2/CBDK_IC_Contest/cur/Verilog/tsmc13.v

sdf = +define+SDF

# Combine them together.
srcs = $(tb) $(others)
srcs_syn = $(tb) $(others_syn)

# The log files.
log = *.log ncverilog.history novas_dump.log INCA_libs

# Defalut command is sim.
# If you type "make", makefile will execute "make sim" command.
make::sim

# Run the program.
sim:
	$(nc) $(srcs)

syn: build/ALU_syn.v
	$(nc) $(srcs_syn) $(sdf)

check:
	$(nc) -c $(others)

compile:
	dv -f ALU.tcl -no_gui

# Clean the log file.
clean:
	rm -rf $(log) *mr *.pvl *.syn *.X *.svf

all: check sim syn clean

.PHONY: sim syn check compile clean all

build/ALU_syn.v: compile
