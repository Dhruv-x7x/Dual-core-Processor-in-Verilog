module Instruction_Memory(PC_new,Instr);

input [31:0] PC_new;
output reg [31:0] Instr;

reg [31:0] memory [0:4294967295]; 	//2^32 rows each of 32 bits

// Initialize the instruction memory
initial begin
    memory[0]  <= 32'b01000000000001100110000010110111;
    memory[1]  <= 32'b01000000000001100110000010110111;
    memory[2]  <= 32'b01000000000001110000000100110111;
    memory[3]  <= 32'b01000000000001111010000110110111;
    memory[4]  <= 32'b01000000000001111010001000110111;
    memory[5]  <= 32'b00000000000000000001001010110111;
    memory[6]  <= 32'b00000000000000000010001100110111;
    memory[7]  <= 32'b00000000000000000011001110110111;
    memory[8]  <= 32'b00000000000000000100010000110111;
    memory[9]  <= 32'b00010000010100001000010011010011;
    memory[10] <= 32'b00010000011000010000010101010011;
    memory[11] <= 32'b00010000011100011000010111010011;
    memory[12] <= 32'b00010000100000100000011001010011;
    memory[13] <= 32'b00000000101001001000011011010011;
    memory[14] <= 32'b00000000110001011000011101010011;
    memory[15] <= 32'b00000000111001101000011111010011;
    memory[16] <= 32'b00001000010101111000101011010011;
    memory[17] <= 32'b00010000011000001000010011010011;
    memory[18] <= 32'b00010000010100010000010101010011;
    memory[19] <= 32'b00010000100000011000010111010011;
    memory[20] <= 32'b00010000011100100000011001010011;
    memory[21] <= 32'b00000000101001001000011011010011;
    memory[22] <= 32'b00000000110001011000011101010011;
    memory[23] <= 32'b00000000111001101000011111010011;
    memory[24] <= 32'b00001000011001111000101101010011;
    memory[25] <= 32'b00010000011100001000010011010011;
    memory[26] <= 32'b00010000100000010000010101010011;
    memory[27] <= 32'b00010000010100011000010111010011;
    memory[28] <= 32'b00010000011000100000011001010011;
    memory[29] <= 32'b00000000101001001000011011010011;
    memory[30] <= 32'b00000000110001011000011101010011;
    memory[31] <= 32'b00000000111001101000011111010011;
    memory[32] <= 32'b00001000011101111000101111010011;
    memory[33] <= 32'b00010000100000001000010011010011;
    memory[34] <= 32'b00010000011100010000010101010011;
    memory[35] <= 32'b00010000011000011000010111010011;
    memory[36] <= 32'b00010000010100100000011001010011;
    memory[37] <= 32'b00000000101001001000011011010011;
    memory[38] <= 32'b00000000110001011000011101010011;
    memory[39] <= 32'b00000000111001101000011111010011;
    memory[40] <= 32'b00001000100001111000110001010011;
    memory[41] <= 32'b00010000010110101000010011010011;
    memory[42] <= 32'b00010000011010110000010101010011;
    memory[43] <= 32'b00010000011110111000010111010011;
    memory[44] <= 32'b00010000100011000000011001010011;
    memory[45] <= 32'b00001000101001001000011011010011;
    memory[46] <= 32'b00000000110001011000011101010011;
    memory[47] <= 32'b00000000111001101000011111010011;
    memory[48] <= 32'b00001000010101111000110011010011;
    memory[49] <= 32'b00010000011010101000010011010011;
    memory[50] <= 32'b00010000010110110000010101010011;
    memory[51] <= 32'b00010000100010111000010111010011;
    memory[52] <= 32'b00010000011111000000011001010011;
    memory[53] <= 32'b00000000101001001000011011010011;
    memory[54] <= 32'b00000000110001011000011101010011;
    memory[55] <= 32'b00001000111001101000011111010011;
    memory[56] <= 32'b00001000011001111000110101010011;
    memory[57] <= 32'b00010000010111001000010011010011;
    memory[58] <= 32'b00010000011011010000010101010011;
    memory[59] <= 32'b00000000101001001000011011010011;
end

always @(*) begin
    Instr = memory[PC_new];  // Access memory at the location specified by PC_new
end

endmodule
