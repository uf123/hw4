module bcdtobinary(clk,load,reset,I,O);
input clk;
input load;
input reset;
input [3:0] I;  //  輸入二進制
output [7:0] O; // 輸出七段顯示器之數字
reg [7:0] O;    // 宣告 8 bits 的暫存器
always@ (I)     // 感受所有訊號
begin
    case(I)     //根據I決定要執行何種運算
        4'b0000:
            O = 8'b1100_0000;   //0
        4'b0001:
            O = 8'b1111_1001;   //1
        4'b0010:
            O = 8'b1010_0100;   //2
        4'b0011:
            O = 8'b1011_0000;   //3
        4'b0100:
            O = 8'b1001_1001;   //4
        4'b0101:
            O = 8'b1001_0010;   //5
        4'b0110:
            O = 8'b1000_0010;   //6
        4'b0111:
            O = 8'b1111_1000;   //7
        4'b1000:
            O = 8'b1000_0000;   //8
        4'b1001:
            O = 8'b1001_0000;   //9
        default O = 8'b1111_1111;
    endcase
end
always@ (posedge clk or posedge load or posedge reset )
begin
    if(load == 1'b1)
    begin
        O <= 8'b1111_1000;
    end
    else if(reset == 1'b1)
    begin
        O <= 8'b1100_0000;
    end
end
endmodule
