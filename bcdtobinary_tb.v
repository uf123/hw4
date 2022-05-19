module bcdtobinary_tb;
reg clk_tb;
reg load_tb;
reg reset_tb;
reg[3:0] I_tb;
wire[7:0] O_tb;
bcdtobinary bla(.clk(clk_tb),.load(load_tb),.reset(reset_tb),.I(I_tb),.O(O_tb));
initial
begin
    clk_tb = 0;
    #10;
    I_tb = 4'b0000;
    #10;
    I_tb = 4'b0001;
    #10;
    I_tb = 4'b0010;
    #10;
    I_tb = 4'b0011;
    #10;
    I_tb = 4'b0100;
    #10;
    I_tb = 4'b0101;
    #10;
    I_tb = 4'b0110;
    #10;
    I_tb = 4'b0111;
    #10;
    I_tb = 4'b1000;
    #10;
    I_tb = 4'b1001;
    #10;
    load_tb = 1'b1;
    #10;
    load_tb = 1'b0;
    #10;
    reset_tb = 1'b1;
    #10;
    reset_tb = 1'b0;
    $finish;
end
always #5 clk_tb = ~clk_tb;
initial
begin
    $dumpfile("bcdtobinary.vcd");
    $dumpvars(0, bcdtobinary_tb);
end
endmodule
