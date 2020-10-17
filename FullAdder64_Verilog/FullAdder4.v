module FullAdder4 (
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] S,
    output Cout
    );

    wire C0;
    wire C1;
    wire C2;

    FullAdder1 FA1_0 (
        .A(A[0]),
        .B(B[0]),
        .Cin(Cin),
        .S(S[0]),
        .Cout(C0)
    );
    FullAdder1 FA1_1 (
        .A(A[1]),
        .B(B[1]),
        .Cin(C0),
        .S(S[1]),
        .Cout(C1)
    );
    FullAdder1 FA1_2 (
        .A(A[2]),
        .B(B[2]),
        .Cin(C1),
        .S(S[2]),
        .Cout(C2)
    );
    FullAdder1 FA1_3 (
        .A(A[3]),
        .B(B[3]),
        .Cin(C2),
        .S(S[3]),
        .Cout(Cout)
    );

endmodule