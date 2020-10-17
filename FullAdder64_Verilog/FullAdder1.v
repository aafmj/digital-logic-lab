module FullAdder1 (
    input A,
    input B,
    input Cin,
    output S,
    output Cout
    );

    // represent data storage
    reg S, Cout;

    // using behavioral style
    // Procedural statements inside this always block gets executed once there’s any change in inputs.
    always @(*)
        begin
            S = A ^ B ^ Cin;
            Cout = A&B | (A^B) & Cin; // or => Cout = A&B | A&Cin | B&Cin;
        end

endmodule