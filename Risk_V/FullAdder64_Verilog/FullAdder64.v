module FullAdder64 (
    input [63:0] A,
    input [63:0] B,
    input Cin,
    output [63:0] S,
    output Cout
    );

    wire C0;
    wire C1;
    wire C2;

    FullAdder16 FA16_0 (
        .A(A[15:0]),
        .B(B[15:0]),
        .Cin(Cin),
        .S(S[15:0]),
        .Cout(C0)
    );
    FullAdder16 FA16_1 (
        .A(A[31:16]),
        .B(B[31:16]),
        .Cin(C0),
        .S(S[31:16]),
        .Cout(C1)
    );
    FullAdder16 FA16_2 (
        .A(A[47:32]),
        .B(B[47:32]),
        .Cin(C1),
        .S(S[47:32]),
        .Cout(C2)
    );
    FullAdder16 FA16_3 (
        .A(A[63:48]),
        .B(B[63:48]),
        .Cin(C2),
        .S(S[63:48]),
        .Cout(Cout)
    );

endmodule