`timescale 1ns / 1ps


module IIC_master (
    input wire clk,        // System clock
    input wire reset,      // System reset
    input wire [6:0] addr, // Slave address
    input wire [7:0] data, // Data to write
    input wire enable,     // Start signal
    
    output reg scl,        // Serial Clock
    inout  wire sda 
);

// Your logic goes here

endmodule