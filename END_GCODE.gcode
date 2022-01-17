; printing object ENDGCODE
G92 E0.0 ; prepare to retract
G1 E-6 F3000; retract to avoid stringing
; Anti-stringing end wiggle
{if layer_z < max_print_height}G1 Z{min(layer_z+100, max_print_height)}{endif} F4000 ; Move print head up
G1 X0 Y120 F3000 ; present print
; Reset print setting overrides
G92 E0
M200 D0 ; disable volumetric e
M220 S100 ; reset speed factor to 100%
M221 S100 ; reset extruder factor to 100%
;M900 K0 ; reset linear acceleration(Marlin)
; Shut down printer
M104 S0 ; turn off temperature
M140 S0 ; turn off heatbed
M107 ; turn off fan
M18 S180 ;disable motors after 180s
M300 S40 P10 ; Bip
M117 Print finish.