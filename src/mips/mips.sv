`timescale 1ns/1ps
`include "defines.vh"

import includes::*;

module mips(
    input       logic         clk       ,
    input       logic         rst       ,
    input       logic `W_HINT hard_intr ,
    sram.master               ibus_sram ,
    sram.master               dbus_sram ,
    input       bus_error     ibus_error,
    input       bus_error     dbus_error,
    output      debuginfo     debug     );
    
    sram ibus_mmu(clk);
    sram dbus_mmu(clk);
    
    regf_r cp0_rt(clk);
    regf_w cp0_rd(clk);
    regf_r rs    (clk);
    regf_r rt    (clk);
    regf_w rd    (clk);
    
    reg_error cp0w;
    
    logic `W_INTV intr_vect;
    logic `W_ADDR er_epc   ;
    
    logic `W_ADDR mmu_inst_addr;
    logic `W_ADDR mmu_data_addr;
    
    mmu mmu_(
        .ibus_v(ibus_mmu.slave),
        .dbus_v(dbus_mmu.slave),
        .ibus_p(ibus_sram     ),
        .dbus_p(dbus_sram     ));
    
    gpr gpr_(
        .clk(clk     ),
        .rst(rst     ),
        .rs (rs.slave),
        .rt (rt.slave),
        .rd (rd.slave));
    
    cp0 cp0_(
        .clk      (clk         ),
        .rst      (rst         ),
        .rt       (cp0_rt.slave),
        .rd       (cp0_rd.slave),
        .cp0w     (cp0w        ),
        .hard_intr(hard_intr   ),
        .intr_vect(intr_vect   ),
        .er_epc   (er_epc      ));
    
    datapath datapath_(
        .clk       (clk            ),
        .rst       (rst            ),
        .intr_vect (intr_vect      ),
        .er_epc    (er_epc         ),
        .ibus_sram (ibus_mmu.master),
        .dbus_sram (dbus_mmu.master),
        .ibus_error(ibus_error     ),
        .dbus_error(dbus_error     ),
        .cp0w_error(cp0w           ),
        .cp0_rt    (cp0_rt.master  ),
        .cp0_rd    (cp0_rd.master  ),
        .rs        (rs.master      ),
        .rt        (rt.master      ),
        .rd        (rd.master      ),
        .debug     (debug          ));
    
endmodule

