//DESIGN
module alu(
    input [3:0] a,
    input [3:0] b,
    input [1:0] sel,
    output reg [3:0] y,
    output reg [4:0] full_result,
    output reg k,
    output reg n,
    output reg c,
    output reg v
);

always @(*) begin
    case(sel)
        2'b00: begin
            y=a+b;
            full_result=a+b;
            v = (a[3]==b[3]) && (y[3]!=a[3]);
        end
        2'b01: begin
            y=a-b;
            full_result=a-b;
            v = (a[3]!=b[3]) && (y[3]!=a[3]);
        end
        2'b10: begin
            y=a&b; 
            full_result=a&b;
            v = 1'b0;
            c = 1'b0;
        end
        2'b11: begin
            y=a|b; 
            full_result=a|b;
            v = 1'b0;
            c = 1'b0;
        end
    endcase

    if (y==0)
        k=1'b1;
    else
        k=1'b0;

    if (y[3]==1)
        n=1'b1;
    else
        n=1'b0;

    if (full_result[4]==1)
        c=1'b1;
    else
        c=1'b0;

end
endmodule
