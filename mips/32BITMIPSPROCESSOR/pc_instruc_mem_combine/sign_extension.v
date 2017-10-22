module sign_extension (
	input  [15:0] idata,
	output  reg [31:0] odata
);

	

	always @( idata) begin
    odata[31:0] <= { {16{idata[15]}}, idata[15:0] };
end

endmodule