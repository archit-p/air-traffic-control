`timescale 1ns/10ps
module tb_picker;
    reg en,clk;
    reg [1:0] d;
    wire [3:0]signal;
    runway_picker runway_pick(en,d,clk,signal);
    initial begin
        
        clk = 1'b0;
        repeat (100)
                #10 clk = ~clk;
    end 
    initial
    begin
        $dumpfile("output.vcd");
        $dumpvars(0,runway_pick);

                en = 1'b1;
                d = 2'b00;
        #10     en = 1'b0;
                $monitor("Direction: %d Signal: %d", d, signal);

        #100
                en = 1'b1;
                d = 2'b00;
        #10     en = 1'b0;
                $monitor("Direction: %d Signal: %d", d, signal);

        #100
                en = 1'b1;
                d = 2'b00;
        #10     en = 1'b0;
                $monitor("Direction: %d Signal: %d", d, signal);

        #20
                en = 1'b1;
                d = 2'b00;
        #10     en = 1'b0;
                $monitor("Direction: %d Signal: %d", d, signal);

        #20
                en = 1'b1;
                d = 2'b00;
        #10     en = 1'b0;
                $monitor("Direction: %d Signal: %d", d, signal);

        #20
                en = 1'b1;
                d = 2'b00;
        #10     en = 1'b0;
                $monitor("Direction: %d Signal: %d", d, signal);
        
    end
endmodule // tb
