`timescale 1ns/1ns
module test;
    reg a,b;
    wire c;
    reg [1:0] x=2'b00;
    xor uut(c,a,b);
    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0,test); 
        repeat (40) begin
            x=x+1;
            a=x[0];
            b=x[1];
            #50;
        end          
    end
endmodule