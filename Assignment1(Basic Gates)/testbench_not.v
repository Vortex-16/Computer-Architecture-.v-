module testbench_and;
  reg a;
  wire y;
  not_gate uut(.a(a),.y(y));  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    a=0; #100;
    a=1; #100;
  end
endmodule