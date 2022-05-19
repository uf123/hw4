VERILOG = iverilog
TARGET = bcdtobinary.vcd
$(TARGET) : bcdtobinary.vvp
	vvp bcdtobinary.vvp
bcdtobinary.vvp: bcdtobinary_tb.v bcdtobinary.v
	$(VERILOG) -o bcdtobinary.vvp bcdtobinary_tb.v bcdtobinary.v
clean:
	-del $(TARGET)
