module light(
    input upstairs,
    input downstairs,
    
      // Declare stair light output
    output stair_light
);

    assign stair_light = upstairs ^ downstairs;

endmodule