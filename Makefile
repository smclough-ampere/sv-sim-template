all:
	vl vcs -full64 -licqueue '-timescale=1ns/1ns' '+vcs+flush+all' '+warn=all' '-sverilog' src/design.sv src/testbench.sv '-Mdir=./BUILD'
	@rm -rf BUILD/bin
	@mkdir BUILD/bin
	@mv simv* BUILD/bin
	@./BUILD/bin/simv +vcs+lic+wait
	@rm flex*
	@rm ucli.key
clean:
	rm flex*
	rm ucli.key
	rm -rf simv.*
	rm -rf BUILD
