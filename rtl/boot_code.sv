
module boot_code
(
    input  logic        CLK,
    input  logic        RSTN,

    input  logic        CSN,
    input  logic [9:0]  A,
    output logic [31:0] Q
  );

  const logic [0:699] [31:0] mem = {
    32'h0040006F,
    32'h00000093,
    32'h00008113,
    32'h00008193,
    32'h00008213,
    32'h00008293,
    32'h00008313,
    32'h00008393,
    32'h00008413,
    32'h00008493,
    32'h00008513,
    32'h00008593,
    32'h00008613,
    32'h00008693,
    32'h00008713,
    32'h00008793,
    32'h00008813,
    32'h00008893,
    32'h00008913,
    32'h00008993,
    32'h00008A13,
    32'h00008A93,
    32'h00008B13,
    32'h00008B93,
    32'h00008C13,
    32'h00008C93,
    32'h00008D13,
    32'h00008D93,
    32'h00008E13,
    32'h00008E93,
    32'h00008F13,
    32'h00008F93,
    32'h00100117,
    32'hF8010113,
    32'h00001D17,
    32'h800D0D13,
    32'h00000D97,
    32'h7F8D8D93,
    32'h01BD5863,
    32'h000D2023,
    32'h004D0D13,
    32'hFFADDCE3,
    32'h00000513,
    32'h00000593,
    32'h074000EF,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h46811101,
    32'h45A14601,
    32'h09F00513,
    32'h00EFCE06,
    32'h051337E0,
    32'h00EF0400,
    32'h45813CA0,
    32'h00EF4501,
    32'h45813A60,
    32'h00EF4501,
    32'h00283F20,
    32'h04000593,
    32'h434000EF,
    32'h071347A2,
    32'hD5132190,
    32'h87A10187,
    32'h157D07C2,
    32'h353383C1,
    32'h886300A0,
    32'h670900E7,
    32'h8F990761,
    32'h00F037B3,
    32'h40F2953E,
    32'h80826105,
    32'h4505715D,
    32'hC4A2C686,
    32'hC0CAC2A6,
    32'hDC52DE4E,
    32'hD85ADA56,
    32'hD462D65E,
    32'hD06AD266,
    32'h25C000EF,
    32'h45014585,
    32'h460000EF,
    32'h87936785,
    32'h0001BB87,
    32'hFFF517FD,
    32'h27B74711,
    32'hC3D81A10,
    32'hF65FF0EF,
    32'h8537C911,
    32'h05930000,
    32'h05130240,
    32'h00EF6905,
    32'hA0014860,
    32'h00008537,
    32'h051345C5,
    32'h00EF6B85,
    32'h46814760,
    32'h45A14601,
    32'h00EF4519,
    32'h45012C20,
    32'h310000EF,
    32'h458164C1,
    32'h00EF4505,
    32'h14FD33E0,
    32'h00EF4405,
    32'h8D653660,
    32'hFE851DE3,
    32'h80000637,
    32'h02000693,
    32'h34860613,
    32'h051345A1,
    32'h00EF0710,
    32'h450128E0,
    32'h2DC000EF,
    32'h458164C1,
    32'h00EF8522,
    32'h14FD30A0,
    32'h334000EF,
    32'h1DE38D65,
    32'h4581FE85,
    32'h00EF4521,
    32'h06932A20,
    32'h46010200,
    32'h051345A1,
    32'h00EF0EB0,
    32'h051325A0,
    32'h00EF1000,
    32'h45812A60,
    32'h00EF4509,
    32'h05932D60,
    32'h850A1000,
    32'h318000EF,
    32'h85374CB2,
    32'h45D50000,
    32'h6CC50513,
    32'h4C124402,
    32'h4AD249C2,
    32'h00EF4B72,
    32'h45813CE0,
    32'h00EF4521,
    32'h5F632560,
    32'h84A20790,
    32'h49016421,
    32'h409C0C33,
    32'h00008BB7,
    32'h72840413,
    32'h00008A37,
    32'h96136D05,
    32'h06930084,
    32'h45A10200,
    32'h0EB00513,
    32'h1F0000EF,
    32'h00EF6521,
    32'h458123E0,
    32'h00EF4509,
    32'h053326E0,
    32'h65A1009C,
    32'h2B0000EF,
    32'h85134599,
    32'h00EF6E4B,
    32'h55133760,
    32'h45850049,
    32'h00EF9522,
    32'h751336A0,
    32'h458500F9,
    32'h00EF9522,
    32'h090535E0,
    32'h05134599,
    32'h00EF6ECA,
    32'h94EA3520,
    32'h388000EF,
    32'hFB2C91E3,
    32'h147D6441,
    32'h00EF4485,
    32'h8D612520,
    32'hFE951DE3,
    32'h00008537,
    32'h051345B5,
    32'h00EF6F45,
    32'h00EF32A0,
    32'h45813620,
    32'h00EF4521,
    32'h5F631AE0,
    32'h64210760,
    32'h490184CE,
    32'h413A89B3,
    32'h00008BB7,
    32'h72840413,
    32'h00008A37,
    32'h96136A85,
    32'h06930084,
    32'h45A10200,
    32'h0EB00513,
    32'h148000EF,
    32'h00EF6521,
    32'h45811960,
    32'h00EF4509,
    32'h85331C60,
    32'h65A10099,
    32'h208000EF,
    32'h85134599,
    32'h00EF6E4B,
    32'h55132CE0,
    32'h45850049,
    32'h00EF9522,
    32'h75132C20,
    32'h458500F9,
    32'h00EF9522,
    32'h09052B60,
    32'h05134599,
    32'h00EF6ECA,
    32'h94D62AA0,
    32'h2E0000EF,
    32'hFB2B11E3,
    32'h00008537,
    32'h02200593,
    32'h70450513,
    32'h290000EF,
    32'h2C8000EF,
    32'h08000793,
    32'h00078067,
    32'h00010001,
    32'h40B60001,
    32'h44264501,
    32'h49064496,
    32'h5A6259F2,
    32'h5B425AD2,
    32'h5C225BB2,
    32'h5D025C92,
    32'h80826161,
    32'hFF010113,
    32'h00812423,
    32'h00000593,
    32'h00050413,
    32'h00F00513,
    32'h00112623,
    32'h00912223,
    32'h290000EF,
    32'h00000593,
    32'h00E00513,
    32'h284000EF,
    32'h00000593,
    32'h00D00513,
    32'h278000EF,
    32'h00000593,
    32'h00C00513,
    32'h26C000EF,
    32'h04805E63,
    32'h00100493,
    32'h00000593,
    32'h01000513,
    32'h258000EF,
    32'h04940463,
    32'h00000593,
    32'h00B00513,
    32'h248000EF,
    32'h00200793,
    32'h02F40A63,
    32'h00000593,
    32'h00000513,
    32'h234000EF,
    32'h00300793,
    32'h02F40063,
    32'h00048513,
    32'h00C12083,
    32'h00812403,
    32'h00412483,
    32'h00000593,
    32'h01010113,
    32'h2100006F,
    32'h00C12083,
    32'h00812403,
    32'h00412483,
    32'h01010113,
    32'h00008067,
    32'h00004737,
    32'hF0070713,
    32'h00869693,
    32'h02000793,
    32'h40B787B3,
    32'h00E6F6B3,
    32'h03F5F593,
    32'h1A102737,
    32'h00F51533,
    32'h00B6E5B3,
    32'h00A72423,
    32'h00C72623,
    32'h00B72823,
    32'h00008067,
    32'h01051513,
    32'h01059593,
    32'h01055513,
    32'h00A5E5B3,
    32'h1A1027B7,
    32'h00B7AA23,
    32'h00008067,
    32'h1A102737,
    32'h01072783,
    32'hFF010113,
    32'h01051513,
    32'h00F12623,
    32'h00C12783,
    32'h01079793,
    32'h0107D793,
    32'h00F56533,
    32'h00A12623,
    32'h00C12783,
    32'h01010113,
    32'h00F72823,
    32'h00008067,
    32'h00100793,
    32'h00858593,
    32'h00B795B3,
    32'h00A79533,
    32'h000017B7,
    32'hF0078793,
    32'h00F5F5B3,
    32'h0FF57513,
    32'h00A5E533,
    32'h1A1027B7,
    32'h00A7A023,
    32'h00008067,
    32'h1A1027B7,
    32'h0007A783,
    32'hFF010113,
    32'h00F12623,
    32'h00C12503,
    32'h01010113,
    32'h00008067,
    32'h4055D793,
    32'hFF010113,
    32'h7FF7F793,
    32'h01F5F593,
    32'h00F12423,
    32'h00058863,
    32'h00812783,
    32'h00178793,
    32'h00F12423,
    32'h00012623,
    32'h00C12683,
    32'h00812783,
    32'h1A102737,
    32'h00070813,
    32'h04F6D063,
    32'h00072783,
    32'h4107D793,
    32'h0FF7F793,
    32'hFE078AE3,
    32'h00C12783,
    32'h02082583,
    32'h00C12683,
    32'h00279793,
    32'h00F507B3,
    32'h00168693,
    32'h00D12623,
    32'h00C12603,
    32'h00812683,
    32'h00B7A023,
    32'hFCD644E3,
    32'h01010113,
    32'h00008067,
    32'h1A1076B7,
    32'h0046A703,
    32'h1A1007B7,
    32'h0085D613,
    32'h00276713,
    32'h00E6A223,
    32'h08300713,
    32'h00E7A623,
    32'h0FF5F593,
    32'h0A700713,
    32'h00C7A223,
    32'h00B7A023,
    32'h00E7A423,
    32'h00300713,
    32'h00E7A623,
    32'h0047A703,
    32'h0F077713,
    32'h00276713,
    32'h00E7A223,
    32'h00008067,
    32'h1A100737,
    32'h02058A63,
    32'h04050613,
    32'h01472783,
    32'h0207F793,
    32'hFE078CE3,
    32'h00150513,
    32'hFFF54683,
    32'h1A1007B7,
    32'hFFF58593,
    32'h00D7A023,
    32'hFCC50CE3,
    32'hFC059EE3,
    32'h00008067,
    32'h00008067,
    32'h1A100737,
    32'h01472783,
    32'h0407F793,
    32'hFE078CE3,
    32'h00008067,
    32'h1A1076B7,
    32'h0006A783,
    32'hFF010113,
    32'h00A595B3,
    32'h00F12623,
    32'h00C12703,
    32'h00100793,
    32'h00A797B3,
    32'hFFF7C793,
    32'h00E7F7B3,
    32'h00F12623,
    32'h00C12783,
    32'h00F5E533,
    32'h00A12623,
    32'h00C12783,
    32'h01010113,
    32'h00F6A023,
    32'h00008067,
    32'h4F525245,
    32'h53203A52,
    32'h736E6170,
    32'h206E6F69,
    32'h20495053,
    32'h73616C66,
    32'h6F6E2068,
    32'h6F662074,
    32'h0A646E75,
    32'h00000000,
    32'h64616F4C,
    32'h20676E69,
    32'h6D6F7266,
    32'h49505320,
    32'h0000000A,
    32'h79706F43,
    32'h20676E69,
    32'h74736E49,
    32'h74637572,
    32'h736E6F69,
    32'h0000000A,
    32'h636F6C42,
    32'h0000206B,
    32'h6E6F6420,
    32'h00000A65,
    32'h79706F43,
    32'h20676E69,
    32'h61746144,
    32'h0000000A,
    32'h656E6F44,
    32'h756A202C,
    32'h6E69706D,
    32'h6F742067,
    32'h736E4920,
    32'h63757274,
    32'h6E6F6974,
    32'h4D415220,
    32'h00000A2E,
    32'h33323130,
    32'h37363534,
    32'h42413938,
    32'h46454443,
    32'h00000010,
    32'h00000000,
    32'h00527A01,
    32'h01010401,
    32'h00020D1B,
    32'h00000014,
    32'h00000018,
    32'hFFFFF970,
    32'h00000060,
    32'h200E4200,
    32'h7F01114C,
    32'h00000038,
    32'h00000030,
    32'hFFFFF9B8,
    32'h00000278,
    32'h500E4200,
    32'h7F01115A,
    32'h117E0811,
    32'h12117D09,
    32'h7B13117C,
    32'h117A1411,
    32'h16117915,
    32'h77171178,
    32'h11761811,
    32'h1A117519,
    32'h00000074,
    32'h0000001C,
    32'h0000006C,
    32'hFFFFFBF4,
    32'h000000B4,
    32'h100E4400,
    32'h7E081148,
    32'h7F011150,
    32'h007D0911,
    32'h00000010,
    32'h0000008C,
    32'hFFFFFC88,
    32'h00000038,
    32'h00000000,
    32'h00000010,
    32'h000000A0,
    32'hFFFFFCAC,
    32'h0000001C,
    32'h00000000,
    32'h00000010,
    32'h000000B4,
    32'hFFFFFCB4,
    32'h00000038,
    32'h100E4C00,
    32'h00000010,
    32'h000000C8,
    32'hFFFFFCD8,
    32'h00000030,
    32'h00000000,
    32'h00000010,
    32'h000000DC,
    32'hFFFFFCF4,
    32'h0000001C,
    32'h100E4C00,
    32'h00000010,
    32'h000000F0,
    32'hFFFFFCFC,
    32'h00000080,
    32'h100E4800,
    32'h00000010,
    32'h00000104,
    32'hFFFFFD68,
    32'h00000050,
    32'h00000000,
    32'h00000010,
    32'h00000118,
    32'hFFFFFDA4,
    32'h0000003C,
    32'h00000000,
    32'h00000010,
    32'h0000012C,
    32'hFFFFFDCC,
    32'h00000014,
    32'h00000000,
    32'h00000010,
    32'h00000140,
    32'hFFFFFDCC,
    32'h00000048,
    32'h100E4C00,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000};

  logic [9:0] A_Q;

  always_ff @(posedge CLK)
  begin
    if (~RSTN)
      A_Q <= '0;
    else
      if (~CSN)
        A_Q <= A;
  end

  assign Q = mem[A_Q];

endmodule