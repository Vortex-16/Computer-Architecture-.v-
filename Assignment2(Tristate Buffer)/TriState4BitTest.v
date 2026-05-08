module testbench_tristate_4bit;
  reg en;
  reg [3:0] a;
  wire [3:0] z;
  tristate_4bit uut (.en(en),.a(a),.z(z));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    en = 0; a = 4'b0000; #100;
    en = 0; a = 4'b1010; #100;
    en = 1; a = 4'b0101; #100;
    en = 1; a = 4'b1111; #100;
  end
endmodule