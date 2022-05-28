
head = src/header.v
nc = ncverilog

nc_option = +access+r

assignment_name = PAT

# The file name of testbench.
tb = tests/$(assignment_name)_tb.v

# The file name of our modules.
others = src/$(assignment_name).v
others_syn = build/$(assignment_name)_syn.v -v /theda21_2/CBDK_IC_Contest/cur/Verilog/tsmc13.v

sdf = +define+SDF

# Combine them together.
srcs = $(head) $(tb) $(others)
srcs_syn = $(head) $(tb) $(others_syn)

sim_src = $(nc) $(srcs) $(nc_option)

sim0:
	$(sim_src) +define+testcase0
sim1:
	$(sim_src) +define+testcase1
sim2:
	$(sim_src) +define+testcase2

syn_src = $(nc) $(srcs_syn) $(nc_option) $(sdf)

syn0:
	$(syn_src) +define+testcase0
syn1:
	$(syn_src) +define+testcase1
syn2:
	$(syn_src) +define+testcase2

check:
	$(nc) -c $(others)

# The log files.
log = *.log ncverilog.history novas_dump.log INCA_libs

# Clean the log file.
clean:
	rm -rf $(log) *mr *.pvl *.syn *.X *.svf

.PHONY: sim0 sim1 sim2 syn1 syn2 syn 3 check clean
