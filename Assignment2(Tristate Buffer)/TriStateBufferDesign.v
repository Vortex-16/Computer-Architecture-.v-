module tristate(input en, input a,output z);
    assign z = en ? a : 1'bz;
endmodule