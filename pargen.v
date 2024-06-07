`timescale 1ns/1ns

module pbit(A,cbit,o);
    input [6:0] A;
    input cbit;
    output o;
    assign o=A[0]^A[1]^A[2]^A[3]^A[4]^A[5]^A[6]^cbit;
endmodule

module pbit2(A,cbit,o);
    input [7:0] A;
    input cbit;
    output o;
    assign o=A[0]^A[1]^A[2]^A[3]^A[4]^A[5]^A[6]^A[7]^cbit^1;
endmodule