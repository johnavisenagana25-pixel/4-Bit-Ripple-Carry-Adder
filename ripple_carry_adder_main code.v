// Full Adder Module
module full_adder(

    input a,
    input b,
    input cin,

    output sum,
    output carry

);

// Sum operation
assign sum = a ^ b ^ cin;

// Carry operation
assign carry = (a & b) | (b & cin) | (a & cin);

endmodule


// 4-Bit Ripple Carry Adder
module ripple_adder(

    input [3:0] A,
    input [3:0] B,
    input cin,

    output [3:0] SUM,
    output cout

);

// Internal carry wires
wire c1, c2, c3;

// First Full Adder
full_adder FA1(
    A[0],
    B[0],
    cin,
    SUM[0],
    c1
);

// Second Full Adder
full_adder FA2(
    A[1],
    B[1],
    c1,
    SUM[1],
    c2
);

// Third Full Adder
full_adder FA3(
    A[2],
    B[2],
    c2,
    SUM[2],
    c3
);

// Fourth Full Adder
full_adder FA4(
    A[3],
    B[3],
    c3,
    SUM[3],
    cout
);

endmodule
