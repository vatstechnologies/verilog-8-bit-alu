module alu_8bit(
  input [7:0] A,
  input [7:0] B,
  input [2:0] opcode ,
  output reg [7:0] result , 
  output reg carry 
);
  
  always @(*) begin 
    carry=0; // default 
    case (opcode) 
      3'b000 : begin // ADD
        {carry , result } = A+B ;
      end 
      3'b001 : begin // Subtraction
        result = A-B;
      end
      3'b010 : begin // AND
        result = A&B ;
      end
      3'b101 : begin //XNOR
        result = ~(A^B);
      end
      3'b110 : begin //leftshift
        result = A<<1 ;
      end
      3'b111 : begin //RightShift
        result = A>> 1;
      end
      default : begin
        result = 8'b0;
      end
    endcase
  end
endmodule
