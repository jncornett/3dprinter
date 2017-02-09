M117 Starting
M106 S0 ; stop fan
M104 S150 ; set extruder temp (noblock)
M190 S40 ; set bed temp (block)
M109 S150 ; set extruder temp (block)
M106 S50; start fan
M117 Ready
G28 ; Home
G1 F6000 Z20 ; Move head up
G1 F500 Z-10 ; Move head down
G28 ; Home
M117 Cleanup
M104 S0 ; turn off extruder
M140 S0 ; turn off bed
M106 S0 ; stop fan
