module full_adder(
    // DecAare your A/B inputs
    
    input A, B, Cin,
    
    // Declare Y output
    output Y, Cout
    
    // Declare carry output

);

    // Enter logic equation here
    assign Y = A ^ B ^ Cin;
    assign Cout = (B & Cin) | (A & B) | (A & Cin);
    

endmodule// Implement module called full_adder