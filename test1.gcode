;FLAVOR:RepRap
;TIME:900
;Generated with Cura_SteamEngine 2.3.1
;Wait for bed to reach target temp (SXX)
M190 S60
;Set extruder target temp (SXX) <-- redundant (see below)
M104 S200
;Set extruder target temp *and wait* (SXX)
M109 S200
G28 ;Home
G1 Z15.0 F6000 ;Move the platform down 15mm
;Prime the extruder
G92 E0
G1 F200 E3
G92 E0
;LAYER_COUNT:24
;LAYER:0
M106 S0 ;M107 ;FIXME use `M106 S0` (M107 is deprecated per RepRap)
G1 F1500 E-6.5
M117 Finish Setup
G0 F1800 X62.704 Y36.738 Z.3
M117 Start Printing
;TYPE:SKIRT
G1 F300 X0 Y0 Z10
M117 Do Cleanup
;Cleanup
M106 S0;M107
M104 S0;Unset extruder temperature (non-blocking)
M140 S0;Unset bed temperature (non-blocking)
;Retract the filament
G92 E1;'Reset' Extruder to 1
G1 E-1 F300 ;E-1 retracts the filament
G28 X Y;Home
M84;Stop idle hold
M104 S0;Unset extruder temperature (non-blocking)
;End of Gcode
;SETTING_3 {"global_quality": "[general]\\nversion = 2\\nname = empty\\ndefiniti
;SETTING_3 on = custom\\n\\n[metadata]\\nquality_type = normal\\ntype = quality_
;SETTING_3 changes\\n\\n[values]\\nmaterial_diameter = 1.75\\nspeed_layer_0 = 15
;SETTING_3 \\nbrim_width = 4.0\\ncool_fan_full_at_height = 5\\n\\n"}
