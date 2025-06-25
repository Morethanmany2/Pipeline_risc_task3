`timescale 1ns / 1ps
`include "Parameter.v"
// Verilog testbench code to test the processor
module test_Risc_16_bit;

 // Inputs
 reg clk;

 // Instantiate the Unit Under Test (UUT)
 Risc_16_bit uut (
  .clk(clk)
 );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, test_Risc_16_bit);               // whole testbench
  end

  initial begin
    clk = 0;
    #2000;      // Simulate for 2000 ns
    $finish;
  end

 always 
  begin
   #5 clk = ~clk;
  end

endmodule
