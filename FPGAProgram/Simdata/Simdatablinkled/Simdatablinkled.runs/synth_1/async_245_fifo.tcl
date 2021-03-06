# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a15tftg256-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/Simdatablinkled/Simdatablinkled.cache/wt [current_project]
set_property parent.project_path D:/Simdatablinkled/Simdatablinkled.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  D:/Simdatablinkled/Simdatablinkled.srcs/sources_1/new/fifo_proc.v
  D:/Simdatablinkled/Simdatablinkled.srcs/sources_1/new/sys_rst.v
  D:/Simdatablinkled/Simdatablinkled.srcs/sources_1/imports/new/async_245_fifo.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/Simdatablinkled/Simdatablinkled.srcs/constrs_1/new/ft2232_constraint.xdc
set_property used_in_implementation false [get_files D:/Simdatablinkled/Simdatablinkled.srcs/constrs_1/new/ft2232_constraint.xdc]


synth_design -top async_245_fifo -part xc7a15tftg256-1


write_checkpoint -force -noxdef async_245_fifo.dcp

catch { report_utilization -file async_245_fifo_utilization_synth.rpt -pb async_245_fifo_utilization_synth.pb }
