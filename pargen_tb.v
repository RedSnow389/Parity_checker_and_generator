`timescale 1ns/1ns

module test();
    reg [6:0] A;
    reg cbit;
    wire o;

    pbit dut(.A(A),.cbit(cbit),.o(o));

    initial begin
        A = 0;
        cbit = 0;
        $dumpfile("pargen_tb.vcd");
        $dumpvars(0, test);

        #2560 $finish;
    end

    /* Generation of input patterns to simulate the UUT */
    // a, b and c will got through all possible combinations
    always
        #20 A = A + 1;
    always
        #10 cbit = ~cbit;

endmodule

module test2();
    reg [7:0] A;
    reg cbit;
    wire o;

    pbit2 dut(.A(A),.cbit(cbit),.o(o));

    initial begin
        A = 0;
        cbit = 0;
        $dumpfile("parcheck_tb.vcd");
        $dumpvars(0, test2);

        #5120 $finish;
    end

    /* Generation of input patterns to simulate the UUT */
    // a, b and c will got through all possible combinations
    always
        #20 A = A + 1;
    always
        #10 cbit = ~cbit;

endmodule