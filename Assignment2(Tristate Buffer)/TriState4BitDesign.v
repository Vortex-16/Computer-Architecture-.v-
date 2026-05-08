module tristate_4bit (input en,input [3:0] a,output [3:0] z);
    assign z = en ? a : 4'bzzzz;
endmodule