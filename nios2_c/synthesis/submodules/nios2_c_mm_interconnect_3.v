// nios2_c_mm_interconnect_3.v

// This file was auto-generated from altera_merlin_interconnect_wrapper_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 13.1 162 at 2014.06.22.14:25:22

`timescale 1 ps / 1 ps
module nios2_c_mm_interconnect_3 (
		input  wire        clk_0_clk_clk,                                   //                         clk_0_clk.clk
		input  wire        cpu_reset_n_reset_bridge_in_reset_reset,         // cpu_reset_n_reset_bridge_in_reset.reset
		input  wire [18:0] cpu_tightly_coupled_data_master_0_address,       // cpu_tightly_coupled_data_master_0.address
		output wire        cpu_tightly_coupled_data_master_0_waitrequest,   //                                  .waitrequest
		input  wire [3:0]  cpu_tightly_coupled_data_master_0_byteenable,    //                                  .byteenable
		input  wire        cpu_tightly_coupled_data_master_0_read,          //                                  .read
		output wire [31:0] cpu_tightly_coupled_data_master_0_readdata,      //                                  .readdata
		output wire        cpu_tightly_coupled_data_master_0_readdatavalid, //                                  .readdatavalid
		input  wire        cpu_tightly_coupled_data_master_0_write,         //                                  .write
		input  wire [31:0] cpu_tightly_coupled_data_master_0_writedata,     //                                  .writedata
		input  wire        cpu_tightly_coupled_data_master_0_clken,         //                                  .clken
		output wire [12:0] tightly_coupled_data_memory_s1_address,          //    tightly_coupled_data_memory_s1.address
		output wire        tightly_coupled_data_memory_s1_write,            //                                  .write
		input  wire [31:0] tightly_coupled_data_memory_s1_readdata,         //                                  .readdata
		output wire [31:0] tightly_coupled_data_memory_s1_writedata,        //                                  .writedata
		output wire [3:0]  tightly_coupled_data_memory_s1_byteenable,       //                                  .byteenable
		output wire        tightly_coupled_data_memory_s1_chipselect,       //                                  .chipselect
		output wire        tightly_coupled_data_memory_s1_clken             //                                  .clken
	);

	wire         cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_waitrequest;   // tightly_coupled_data_memory_s1_translator:uav_waitrequest -> cpu_tightly_coupled_data_master_0_translator:uav_waitrequest
	wire   [2:0] cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_burstcount;    // cpu_tightly_coupled_data_master_0_translator:uav_burstcount -> tightly_coupled_data_memory_s1_translator:uav_burstcount
	wire  [31:0] cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_writedata;     // cpu_tightly_coupled_data_master_0_translator:uav_writedata -> tightly_coupled_data_memory_s1_translator:uav_writedata
	wire  [18:0] cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_address;       // cpu_tightly_coupled_data_master_0_translator:uav_address -> tightly_coupled_data_memory_s1_translator:uav_address
	wire         cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_clken;         // cpu_tightly_coupled_data_master_0_translator:uav_clken -> tightly_coupled_data_memory_s1_translator:uav_clken
	wire         cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_lock;          // cpu_tightly_coupled_data_master_0_translator:uav_lock -> tightly_coupled_data_memory_s1_translator:uav_lock
	wire         cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_write;         // cpu_tightly_coupled_data_master_0_translator:uav_write -> tightly_coupled_data_memory_s1_translator:uav_write
	wire         cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_read;          // cpu_tightly_coupled_data_master_0_translator:uav_read -> tightly_coupled_data_memory_s1_translator:uav_read
	wire  [31:0] cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_readdata;      // tightly_coupled_data_memory_s1_translator:uav_readdata -> cpu_tightly_coupled_data_master_0_translator:uav_readdata
	wire         cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_debugaccess;   // cpu_tightly_coupled_data_master_0_translator:uav_debugaccess -> tightly_coupled_data_memory_s1_translator:uav_debugaccess
	wire   [3:0] cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_byteenable;    // cpu_tightly_coupled_data_master_0_translator:uav_byteenable -> tightly_coupled_data_memory_s1_translator:uav_byteenable
	wire         cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_readdatavalid; // tightly_coupled_data_memory_s1_translator:uav_readdatavalid -> cpu_tightly_coupled_data_master_0_translator:uav_readdatavalid

	altera_merlin_master_translator #(
		.AV_ADDRESS_W                (19),
		.AV_DATA_W                   (32),
		.AV_BURSTCOUNT_W             (1),
		.AV_BYTEENABLE_W             (4),
		.UAV_ADDRESS_W               (19),
		.UAV_BURSTCOUNT_W            (3),
		.USE_READ                    (1),
		.USE_WRITE                   (1),
		.USE_BEGINBURSTTRANSFER      (0),
		.USE_BEGINTRANSFER           (0),
		.USE_CHIPSELECT              (0),
		.USE_BURSTCOUNT              (0),
		.USE_READDATAVALID           (1),
		.USE_WAITREQUEST             (1),
		.USE_READRESPONSE            (0),
		.USE_WRITERESPONSE           (0),
		.AV_SYMBOLS_PER_WORD         (4),
		.AV_ADDRESS_SYMBOLS          (1),
		.AV_BURSTCOUNT_SYMBOLS       (0),
		.AV_CONSTANT_BURST_BEHAVIOR  (0),
		.UAV_CONSTANT_BURST_BEHAVIOR (0),
		.AV_LINEWRAPBURSTS           (0),
		.AV_REGISTERINCOMINGSIGNALS  (0)
	) cpu_tightly_coupled_data_master_0_translator (
		.clk                      (clk_0_clk_clk),                                                                        //                       clk.clk
		.reset                    (cpu_reset_n_reset_bridge_in_reset_reset),                                              //                     reset.reset
		.uav_address              (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_address),       // avalon_universal_master_0.address
		.uav_burstcount           (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_burstcount),    //                          .burstcount
		.uav_read                 (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_read),          //                          .read
		.uav_write                (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_write),         //                          .write
		.uav_waitrequest          (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_waitrequest),   //                          .waitrequest
		.uav_readdatavalid        (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_readdatavalid), //                          .readdatavalid
		.uav_byteenable           (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_byteenable),    //                          .byteenable
		.uav_readdata             (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_readdata),      //                          .readdata
		.uav_writedata            (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_writedata),     //                          .writedata
		.uav_lock                 (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_lock),          //                          .lock
		.uav_debugaccess          (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_debugaccess),   //                          .debugaccess
		.uav_clken                (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_clken),         //                          .clken
		.av_address               (cpu_tightly_coupled_data_master_0_address),                                            //      avalon_anti_master_0.address
		.av_waitrequest           (cpu_tightly_coupled_data_master_0_waitrequest),                                        //                          .waitrequest
		.av_byteenable            (cpu_tightly_coupled_data_master_0_byteenable),                                         //                          .byteenable
		.av_read                  (cpu_tightly_coupled_data_master_0_read),                                               //                          .read
		.av_readdata              (cpu_tightly_coupled_data_master_0_readdata),                                           //                          .readdata
		.av_readdatavalid         (cpu_tightly_coupled_data_master_0_readdatavalid),                                      //                          .readdatavalid
		.av_write                 (cpu_tightly_coupled_data_master_0_write),                                              //                          .write
		.av_writedata             (cpu_tightly_coupled_data_master_0_writedata),                                          //                          .writedata
		.av_clken                 (cpu_tightly_coupled_data_master_0_clken),                                              //                          .clken
		.av_burstcount            (1'b1),                                                                                 //               (terminated)
		.av_beginbursttransfer    (1'b0),                                                                                 //               (terminated)
		.av_begintransfer         (1'b0),                                                                                 //               (terminated)
		.av_chipselect            (1'b0),                                                                                 //               (terminated)
		.av_lock                  (1'b0),                                                                                 //               (terminated)
		.av_debugaccess           (1'b0),                                                                                 //               (terminated)
		.uav_response             (2'b00),                                                                                //               (terminated)
		.av_response              (),                                                                                     //               (terminated)
		.uav_writeresponserequest (),                                                                                     //               (terminated)
		.uav_writeresponsevalid   (1'b0),                                                                                 //               (terminated)
		.av_writeresponserequest  (1'b0),                                                                                 //               (terminated)
		.av_writeresponsevalid    ()                                                                                      //               (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (13),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (19),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (1),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (0),
		.USE_UAV_CLKEN                  (1),
		.USE_READRESPONSE               (0),
		.USE_WRITERESPONSE              (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (0),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) tightly_coupled_data_memory_s1_translator (
		.clk                      (clk_0_clk_clk),                                                                        //                      clk.clk
		.reset                    (cpu_reset_n_reset_bridge_in_reset_reset),                                              //                    reset.reset
		.uav_address              (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_address),       // avalon_universal_slave_0.address
		.uav_burstcount           (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_burstcount),    //                         .burstcount
		.uav_read                 (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_read),          //                         .read
		.uav_write                (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_write),         //                         .write
		.uav_waitrequest          (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid        (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_readdatavalid), //                         .readdatavalid
		.uav_byteenable           (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_byteenable),    //                         .byteenable
		.uav_readdata             (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_readdata),      //                         .readdata
		.uav_writedata            (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_writedata),     //                         .writedata
		.uav_lock                 (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_lock),          //                         .lock
		.uav_debugaccess          (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_debugaccess),   //                         .debugaccess
		.uav_clken                (cpu_tightly_coupled_data_master_0_translator_avalon_universal_master_0_clken),         //                         .clken
		.av_address               (tightly_coupled_data_memory_s1_address),                                               //      avalon_anti_slave_0.address
		.av_write                 (tightly_coupled_data_memory_s1_write),                                                 //                         .write
		.av_readdata              (tightly_coupled_data_memory_s1_readdata),                                              //                         .readdata
		.av_writedata             (tightly_coupled_data_memory_s1_writedata),                                             //                         .writedata
		.av_byteenable            (tightly_coupled_data_memory_s1_byteenable),                                            //                         .byteenable
		.av_chipselect            (tightly_coupled_data_memory_s1_chipselect),                                            //                         .chipselect
		.av_clken                 (tightly_coupled_data_memory_s1_clken),                                                 //                         .clken
		.av_read                  (),                                                                                     //              (terminated)
		.av_begintransfer         (),                                                                                     //              (terminated)
		.av_beginbursttransfer    (),                                                                                     //              (terminated)
		.av_burstcount            (),                                                                                     //              (terminated)
		.av_readdatavalid         (1'b0),                                                                                 //              (terminated)
		.av_waitrequest           (1'b0),                                                                                 //              (terminated)
		.av_writebyteenable       (),                                                                                     //              (terminated)
		.av_lock                  (),                                                                                     //              (terminated)
		.av_debugaccess           (),                                                                                     //              (terminated)
		.av_outputenable          (),                                                                                     //              (terminated)
		.uav_response             (),                                                                                     //              (terminated)
		.av_response              (2'b00),                                                                                //              (terminated)
		.uav_writeresponserequest (1'b0),                                                                                 //              (terminated)
		.uav_writeresponsevalid   (),                                                                                     //              (terminated)
		.av_writeresponserequest  (),                                                                                     //              (terminated)
		.av_writeresponsevalid    (1'b0)                                                                                  //              (terminated)
	);

endmodule
