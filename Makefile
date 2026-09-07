# Each exercise is a separate design with its own testbench. `make sim-<name>`
# builds and runs one; `make sim` runs every design that has a testbench.

IV := iverilog -g2005
BUILD := build

.PHONY: all sim clean sim-nand sim-mux-nand sim-mux-tristate sim-multiplier

all: sim

$(BUILD):
	@mkdir -p $(BUILD)

sim-nand: | $(BUILD)
	$(IV) -o $(BUILD)/nand.vvp -s my_nand_TB CA1/CA1_Q1_VerilogDescription.v CA1/CA1_Q1_VerilogTB.v
	vvp $(BUILD)/nand.vvp

sim-mux-nand: | $(BUILD)
	$(IV) -o $(BUILD)/mux_nand.vvp -s my_mux_with_nands_TB CA1/CA1_Q3_VerilogDescription.v CA1/CA1_Q3_VerilogTB.v
	vvp $(BUILD)/mux_nand.vvp

sim-mux-tristate: | $(BUILD)
	$(IV) -o $(BUILD)/mux_tri.vvp -s my_mux_with_tri_state_buffer_TB CA1/CA1_Q4_VerilogDescription.v CA1/CA1_Q4_VerilogTB.v
	vvp $(BUILD)/mux_tri.vvp

sim-multiplier: | $(BUILD)
	$(IV) -o $(BUILD)/multiplier.vvp -s CA6_seq_multiplier_TB \
		CA6/seq_multiplier_top.v CA6/seq_multiplier_controller.v \
		CA6/seq_multiplier_data_path.v CA6/full_adder.v CA6/seq_multiplier_TB.v
	vvp $(BUILD)/multiplier.vvp

sim: sim-nand sim-mux-nand sim-mux-tristate sim-multiplier

clean:
	rm -rf $(BUILD) sim.vcd
