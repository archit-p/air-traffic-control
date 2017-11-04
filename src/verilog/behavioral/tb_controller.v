module test();

reg [1:0] d;
reg clk;
wire [3:0]signal;
reg en;

controller new(d, clk, en, signal);

initial begin
        $dumpfile("controller.vcd");
	$dumpvars(0, new);
        clk = 1'b0;
        repeat (100)
                #10 clk = ~clk;
end

initial begin

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
end

endmodule

