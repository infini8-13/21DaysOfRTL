// DFF TB

module day2_tb ();

  // Write your Testbench here...
	logic      clk;
  logic      reset;
  logic      d_i;        
  logic      q_norst_o;   
  logic      q_syncrst_o; 
  logic      q_asyncrst_o; 
  
  day2 dut(.*);
  
  always begin
    clk = 1'b0;
    #5;
    clk = 1'b1;
    #5;
  end
  
  initial begin
  	d_i = 1'b0;
    reset = 1'b1;
    #10;
    reset = 1'b0;
    #10;
    d_i = 1'b1;
    #7;
    reset = 1'b1;
    #8;
    reset = 1'b0;
  
  end
endmodule

