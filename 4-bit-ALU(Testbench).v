//TESTBENCH//TESTBENCH
module testbench;

reg [3:0] a;
reg [3:0] b;
reg [1:0] sel;
wire [3:0] y;
wire [4:0] full_result;
wire k,n,c,v;

alu my_alu(a,b,sel,y,full_result,k,n,c,v);

initial begin
    $dumpfile("aluwaves.vcd");
    $dumpvars(0,testbench);
    a = 0;
    b = 0;
    sel = 0;
    #5;
    a = 4'b1111;
    b = 4'b0001;
    #10 sel = 2'b00;
    #10 sel = 2'b01;
    #10 sel = 2'b10;
    #10 sel = 2'b11;
    #20;
    $display("a=%b | b=%b | sel=%b | Y=%b, Carry=%b\nFlags: zero flag=%b | Negative flag=%b | Carry flag=%b | Overflow flag=%b\n", a, b, sel, y,c,k,n,c,v);
end
endmodule


