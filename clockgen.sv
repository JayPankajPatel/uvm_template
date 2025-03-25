`include "CYCLE.svh"

module clkgen(
    output logic clk
);
    initial begin 
        clk <= 0;
        forever begin 
            #`CYCLE/2 clk = ~clk; 
        end
    end
endmodule : clkgen
