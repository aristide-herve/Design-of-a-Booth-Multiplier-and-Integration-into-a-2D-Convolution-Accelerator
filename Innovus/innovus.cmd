#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Jan  9 17:37:41 2026                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.10-p004_1 (64bit) 05/18/2021 11:58 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.10-p004_1 NR210506-1544/21_10-UB (database version 18.20.544) {superthreading v2.14}
#@(#)CDS: AAE 21.10-p006 (64bit) 05/18/2021 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.10-p004_1 () May 13 2021 20:04:41 ( )
#@(#)CDS: SYNTECH 21.10-b006_1 () Apr 18 2021 22:44:07 ( )
#@(#)CDS: CPE v21.10-p004
#@(#)CDS: IQuantus/TQuantus 20.1.2-s510 (64bit) Sun Apr 18 10:29:16 PDT 2021 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set init_gnd_net VSS
set init_lef_file {/soft/cadence/pdk/GPDK045/gsclib045_svt_v4.4/gsclib045/lef/gsclib045_tech.lef /soft/cadence/pdk/GPDK045/gsclib045_svt_v4.4/gsclib045/lef/gsclib045_macro.lef /soft/cadence/pdk/GPDK045/gsclib045_svt_v4.4/gsclib045/lef/gsclib045_multibitsDFF.lef}
set init_design_settop 0
set init_verilog DATA/top_conv3x3_synth.v
set init_mmmc_file mmmc.tcl
set init_pwr_net VDD
init_design
setDrawView fplan
setDrawView place
globalNetConnect VSS -type pgpin -pin VSS
globalNetConnect VDD -type pgpin -pin VDD
verifyConnectivity -type all -error 1000 -warning 50
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CoreSite -r 0.965996740902 0.7 3 3 3 0.3
uiSetTool select
getIoFlowFlag
fit
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CoreSite -r 0.927765957447 0.7 3.0 3 3.0 3
uiSetTool select
getIoFlowFlag
fit
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal1 bottom Metal1 left Metal2 right Metal2} -width {top 0.2 bottom 0.2 left 0.2 right 0.2} -spacing {top 0.2 bottom 0.2 left 0.2 right 0.2} -offset {top 0.2 bottom 0.2 left 0.2 right 0.2} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal11(11) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal11(11) } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal11(11) }
fit
setDrawView fplan
setDrawView place
setPlaceMode -fp false
place_design
zoomBox -13.54050 23.45200 95.22900 76.03800
zoomBox -7.01650 27.95500 85.43800 72.65350
zoomBox -13.55100 23.49100 95.21950 76.07750
zoomBox -40.92150 4.79200 136.19300 90.42050
zoomBox -53.43900 -3.74100 154.93150 96.99850
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -preCTS
zoomBox -193.07750 -49.26450 206.09650 143.72150
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeTopRoutingLayer 11
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setNanoRouteMode -quiet -drouteEndIteration 1
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
verifyConnectivity -type all -error 1000 -warning 50
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report top_conv3x3.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix top_conv3x3_preCTS -outDir timingReports
setDesignMode -process 45
extractRC
write_sdf top_conv3x3_pnr.sdf
set dbgLefDefOutVersion 5.8
global dbgLefDefOutVersion
set dbgLefDefOutVersion 5.8
defOut -floorplan -netlist -routing top_conv3x3.def
set dbgLefDefOutVersion 5.8
set dbgLefDefOutVersion 5.8
saveNetlist top_conv3x3.v
streamOut top_conv3x3.gds -libName DesignLib -units 2000 -mode ALL
zoomBox -295.58700 -153.49050 27.67250 216.21150
setDrawView place
zoomBox -159.39950 -51.35750 -15.96750 112.68150
zoomBox -223.98350 -67.39500 9.57150 199.71500
fit
fit
setDrawView place
setDrawView fplan
zoomBox -286.78100 -122.67700 265.70100 144.42800
zoomBox -586.06400 -275.31550 472.31950 236.37450
zoomBox -287.93950 -124.73200 264.54400 142.37350
zoomBox -239.10300 -100.06500 230.50800 126.97500
