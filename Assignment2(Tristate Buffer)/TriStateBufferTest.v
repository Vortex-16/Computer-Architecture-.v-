module testbench_tristate;
  reg en, a;
  wire z;
  tristate uut (.en(en),.a(a),.z(z));

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    en = 0; a = 0; #100;
    en = 0; a = 1; #100;
    en = 1; a = 0; #100;
    en = 1; a = 1; #100;
  end
endmodule