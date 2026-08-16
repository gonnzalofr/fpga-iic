`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2026 06:02:19 PM
// Design Name: 
// Module Name: debouncer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module debouncer #(

parameter CYCLES = 2000000
)(
    input reset,
    input clk,
    input wire in_meta,
    output out
    );
   
   reg out_r;
   reg [$clog2(CYCLES)+1:0] count;
   reg transition_state;
  (* ASYNC_REG = "TRUE" *) reg in_sync, in_logic;
   
   assign out = out_r;
   
   
   always @(posedge clk) begin
   in_sync<=in_meta;
   in_logic<=in_sync;
   
        if (reset) begin
            out_r <= 1'b0;
            transition_state <= 1'b0;
            count <= CYCLES;
        end
        else if(!reset) begin
        
            if(count == 0 || in_logic == transition_state) begin
            count <= CYCLES;
            end
            else begin
                 count <= count - 1;
            end
        
        
            if(count == 0) begin
                transition_state <= ~transition_state;
            end
            else begin
                transition_state <= transition_state;
            end
            
            if(count == 0) begin
                out_r <= ~transition_state;
            end
            else begin
                out_r <= transition_state;
            end
        
        
   end    
   
   
   end
   
endmodule
