// Code your testbench here
// or browse Examples
module testbench_or;
  reg a,b;
  wire y;
  or_gate uut(.a(a),.b(b),.y(y));  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,testbench_or);
    a=0; b=0; #100;
    a=0; b=1; #100;
    a=1; b=0; #100;
    a=1; b=1; #100;
  end
endmodule