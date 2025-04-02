/*
 * 32-bit sychronous counter in Verilog
 */
 
module counter (
    input clk,
    input rst,
    output reg [31:0] count
);

always @(posedge clk)
begin
    if (rst) begin
        count <=0;
    end else begin
        count <= count + 1;
    end
end

endmodule