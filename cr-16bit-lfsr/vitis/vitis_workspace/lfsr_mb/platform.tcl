# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\brunoa\Documents\cr\proj2\vitis\vitis_workspace\lfsr_mb\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\brunoa\Documents\cr\proj2\vitis\vitis_workspace\lfsr_mb\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {lfsr_mb}\
-hw {C:\Users\brunoa\Documents\cr\proj2\vitis\lfsr_mb\lfsr_mb.xsa}\
-fsbl-target {psu_cortexa53_0} -out {C:/Users/brunoa/Documents/cr/proj2/vitis/vitis_workspace}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {lfsr_mb}
platform generate -quick
platform generate
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform generate -domains 
platform active {lfsr_mb}
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform generate -domains 
platform active {lfsr_mb}
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform active {lfsr_mb}
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform generate
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform generate -domains 
platform active {lfsr_mb}
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/brunoa/Documents/cr/proj2/vitis/lfsr_mb/lfsr_mb.xsa}
platform generate -domains 
platform generate
