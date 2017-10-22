
module sign_extensiontb;
reg  [15:0] idata;

wire [31:0] odata;

sign_extension uu1(.idata(idata),.odata(odata));
initial 
begin
$monitor("input %b output %b",idata  , odata);
idata[15:0]=16'd17110;
#10 idata[15:0]=16'd36610;
end
endmodule
