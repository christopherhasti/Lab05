// Implement top level module
module top(
    input[7:0] sw,
    output[5:0] led
);
 
    adder adderAB( 
        .A(sw[2]),// Hook up its A to sw[0],
        .B(sw[3]),
        .Y(led[1]),
        .Cout(led[2])
    );

wire carry;

    
    full_adder fA_LSB(
        .A(sw[4]), // Hook up its C to sw[2]
        .B(sw[6]), // Hook up its D to sw[3]
        .Cin(0),
        .Y(led[3]),
        .Cout(carry)
    );
      full_adder fA_MSB( 
        .A(sw[5]), // Hook up its C to sw[2]
        .B(sw[7]), // Hook up its D to sw[3]
        .Cin(carry),
        .Y(led[4]),
        .Cout(led[5])
    );
    
    light lightSwitch(
        .upstairs(sw[0]),
        .downstairs(sw[1]),
        .stair_light(led[0])

      );

endmodule