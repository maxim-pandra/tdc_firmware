
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name spartan6_tcspc -dir "D:/buisnes/programming/spartan6_tcspc/planAhead_run_1" -part xc6slx9tqg144-2
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "D:/buisnes/programming/spartan6_tcspc/MaiModule.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/buisnes/programming/spartan6_tcspc} }
set_param project.paUcfFile  "MaiModule.ucf"
add_files "MaiModule.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
read_xdl -file "D:/buisnes/programming/spartan6_tcspc/MaiModule.ncd"
if {[catch {read_twx -name results_1 -file "D:/buisnes/programming/spartan6_tcspc/MaiModule.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"D:/buisnes/programming/spartan6_tcspc/MaiModule.twx\": $eInfo"
}
