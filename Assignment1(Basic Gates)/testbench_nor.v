module testbench_and;
  reg a,b;
  wire y;
  nor_gate uut(.a(a),.b(b),.y(y));  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    a=0; b=0; #100;
    a=0; b=1; #100;
    a=1; b=0; #100;
    a=1; b=1; #100;
  end
endmodule