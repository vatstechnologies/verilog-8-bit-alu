module alu_8bit_tb;
  reg [7:0] A;
  reg [7:0] B;
  reg [2:0] opcode;
  wire [7:0] result ;
  
  wire carry;
  alu_8bit dut(
    .A (A),
    .B(B),
    .opcode(opcode),
    .result(result),
    .carry(carry)
  );
  
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0,alu_8bit_tb);
    A=8'd10;
    B=8'd5;
opcode = 3'b000; #10; //ADD
    opcode = 3'b001 ; #10; //SUB
    opcode = 3'b010 ; #10 ; // AND
    opcode = 3'b011 ; #10; // OR
    opcode = 3'b100 ; #10; //XOR
    opcode = 3'b101 ; #10 ; //XNOR
    opcode = 3'b110 ; #10 ; //LeftShift
    opcode = 3'b111 ; #10 ; //RigtShift
    
    $finish;
  end
endmodule 
