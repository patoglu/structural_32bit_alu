`define DELAY 20
module my_xor_testbench(); 
reg a, b;
wire  outputx;

my_xor result(outputx, a, b);

initial begin
a = 1'b0; b = 1'b0;
#`DELAY;
a = 1'b1; b = 1'b0;
#`DELAY;
a = 1'b0; b = 1'b1;
#`DELAY;
a = 1'b1; b = 1'b1;
end
 
 
initial
begin
$monitor("time = %2d, a =%1b, b=%1b, sum=%1b", $time, a, b, outputx);
end
 
endmodule