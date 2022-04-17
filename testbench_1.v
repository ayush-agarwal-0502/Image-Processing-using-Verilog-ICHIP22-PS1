`timescale 10ns / 1ps
`include "pixel_operator.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2022 16:35:35
// Design Name: 
// Module Name: testbench_1
// Project Name: e
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

// declaring the testbench module 
module testbench_1();
//for a testbench , outputs wires and inputs registers
/* inbyte , threshold , value, select , outbyte , clk as per the naming given in the official ps1*/
reg [0:7] inbyte;
reg [0:7] threshold;
reg [0:7] value;
reg [0:1] select;
reg clk ;
wire [0:7] outbyte;
integer i=0;
integer fd;
// data_in is the input image text file array
reg [0:7] data_in [0:98303];
// data_out is the output image text file array 
reg [0:7] data_out [0:98303];

//instantiating the design module 
pixel_operator po1(outbyte,inbyte,threshold,value,select,clk);

initial 
begin 
// code for the output file 
fd=$fopen("output.txt","w");
//initialising the clock value to 0 
clk = 1'b0;
// this is for reading the input text file 
$readmemh("ichip22_ps1_image_text.txt", data_in);
end

always 
begin 
// clock keeps toggling as per the timings mentioned in the ps 
#10 clk=~clk ;
end

initial 
begin 
// assigning values to the variables as per the values in the ps 
i=0;
value=60;
threshold=160;
select=3;
//starting the while loop which passes all the pixels of the image throught the design module 

while(i<98304)

begin
inbyte=data_in[i];
#20
data_out[i]=outbyte;
    // $display(outbyte);
i=i+1;

end

i=0;

// the loop which saves the data in the output text file 
while(i<98304)
begin
$fwriteh(fd,data_out[i]);
$fwrite(fd," ");
i=i+1;
end

// finally running finish at the end 
$finish;
end

endmodule
