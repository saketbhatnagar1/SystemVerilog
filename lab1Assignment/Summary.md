feat: Add Lab 1 4-input MUX implementations and parasitic latch simulation

- Implemented 4 different 4:1 MUX designs:
  1. Continuous assignment (muxCont.sv)
  2. Procedural if-else (muxIf.sv)
  3. Case statement (muxCase.sv)
  4. Hierarchical 2:1 MUX (mux2to1.sv: mux2 + mux_hier)

- Added testbench (testbenchmux.sv) to simulate all MUXes
- Added parasitic latch example (latch.sv)
- Verified successful compilation in ModelSim
