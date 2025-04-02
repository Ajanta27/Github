/*
 * Testbench for 32-bit sychronous counter in Verilog
 */
 
 `timescale 1 ns / 10ps
 
module counter_tb ();

localparam CLK_PERIOD = 10;

reg clk = 1'b0;
reg rst = 1'b1;
wire [31:0] count;

//instantiate counter module to be tested
counter counter_inst (
    .clk    (clk),
    .rst    (rst),
    .count  (count)
);

initial begin
    clk = 1'b0;
    rst = 1'b1;
    rst = #(CLK_PERIOD*10) 1'b0;
end

always begin
    clk = #(CLK_PERIOD/2) ~clk;
end

endmodule