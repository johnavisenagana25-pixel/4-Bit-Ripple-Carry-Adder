// Testbench for Ripple Carry Adder
module testbench;

// Inputs
reg [3:0] A;
reg [3:0] B;
reg cin;

// Outputs
wire [3:0] SUM;
wire cout;

// Instantiate module
ripple_adder uut(

    .A(A),
    .B(B),
    .cin(cin),

    .SUM(SUM),
    .cout(cout)

);

initial begin

    // Generate waveform
    $dumpfile("dump.vcd");
    $dumpvars(0,testbench);

    // Monitor outputs
    $monitor(
    "A=%b B=%b Cin=%b SUM=%b Cout=%b",
    A,B,cin,SUM,cout
    );

    // Test case 1
    A = 4'b0000;
    B = 4'b0000;
    cin = 0;
    #10;

    // Test case 2
    A = 4'b0011;
    B = 4'b0101;
    cin = 0;
    #10;

    // Test case 3
    A = 4'b1010;
    B = 4'b0011;
    cin = 0;
    #10;

    // Test case 4
    A = 4'b1111;
    B = 4'b0001;
    cin = 0;
    #10;

    // End simulation
    $finish;

end

endmodule
