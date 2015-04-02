
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name spartan6_tcspc -dir "D:/projects/diploma/buisnes/current/spartan6_tcspc/planAhead_run_2" -part xc6slx9tqg144-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/projects/diploma/buisnes/current/spartan6_tcspc/MaiModule.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/projects/diploma/buisnes/current/spartan6_tcspc} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "MaiModule.ucf" [current_fileset -constrset]
add_files [list {MaiModule.ucf}] -fileset [get_property constrset [current_run]]
link_design
