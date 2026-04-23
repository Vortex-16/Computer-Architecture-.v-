// Code your testbench here
// or browse Examples

module testbench_and;
  reg a,b;
  wire y;
  and_gate uut(.a(a),.b(b),.y(y));  
  initial begin
    $dumpfile("and.vcd");
    $dumpvars(0,testbench_and);
    a=0; b=0; #100;
    a=0; b=1; #100;
    a=1; b=0; #100;
    a=1; b=1; #100;
  end
endmodule