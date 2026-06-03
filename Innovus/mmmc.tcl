# Version:1.0 MMMC View Definition File
# Do Not Remove Above Line

set SDC_FILE $env(SDC_FILE)
set DEMOLIB /soft/cadence/pdk/GPDK045/gsclib045_svt_v4.4/gsclib045

create_rc_corner -name phy_rc_corner -cap_table "/soft/cadence/pdk/gpdk045_v_6_0/soce/gpdk045.extended.CapTbl" -preRoute_res {1.0} -preRoute_cap {1.0} -preRoute_clkres {0.0} -preRoute_clkcap {0.0} -postRoute_res {1.0} -postRoute_cap {1.0} -postRoute_xcap {1.0} -postRoute_clkres {0.0} -postRoute_clkcap {0.0} -qx_tech_file "$DEMOLIB/qrc/qx/gpdk045.tch"

create_library_set -name phy_libs_min -timing "\
   $DEMOLIB/timing/fast_vdd1v0_basicCells.lib \
   $DEMOLIB/timing/fast_vdd1v0_extvdd1v0.lib \
   $DEMOLIB/timing/fast_vdd1v0_extvdd1v2.lib \
   $DEMOLIB/timing/fast_vdd1v0_multibitsDFF.lib \
   $DEMOLIB/timing/fast_vdd1v2_basicCells.lib \
   $DEMOLIB/timing/fast_vdd1v2_extvdd1v0.lib \
   $DEMOLIB/timing/fast_vdd1v2_extvdd1v2.lib \
   $DEMOLIB/timing/fast_vdd1v2_multibitsDFF.lib" \
   -si "$DEMOLIB/celtic/fast.cdb" 

create_library_set -name phy_libs_max -timing "\
   $DEMOLIB/timing/slow_vdd1v0_basicCells.lib \
   $DEMOLIB/timing/slow_vdd1v0_extvdd1v0.lib \
   $DEMOLIB/timing/slow_vdd1v0_extvdd1v2.lib \
   $DEMOLIB/timing/slow_vdd1v0_multibitsDFF.lib \
   $DEMOLIB/timing/slow_vdd1v2_basicCells.lib \
   $DEMOLIB/timing/slow_vdd1v2_extvdd1v0.lib \
   $DEMOLIB/timing/slow_vdd1v2_extvdd1v2.lib \
   $DEMOLIB/timing/slow_vdd1v2_multibitsDFF.lib " \
   -si "$DEMOLIB/celtic/slow.cdb" 

create_constraint_mode -name common -sdc_files   $SDC_FILE
create_delay_corner -name phy_corner_min -library_set {phy_libs_min} -rc_corner {phy_rc_corner}
create_delay_corner -name phy_corner_max -library_set {phy_libs_max} -rc_corner {phy_rc_corner}
create_analysis_view -name phy_view_hold -constraint_mode {common} -delay_corner {phy_corner_min}
create_analysis_view -name phy_view_setup -constraint_mode {common} -delay_corner {phy_corner_max}
set_analysis_view -setup {phy_view_setup} -hold {phy_view_hold}
