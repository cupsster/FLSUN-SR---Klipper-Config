;STARTGCODE
M117 Initializing
; Set coordinate modes
G90 ; use absolute coordinates
M83 ; extruder relative mode
; Reset speed and extrusion rates
M200 D0 ; disable volumetric E
M220 S100 ; reset speed
; Set initial warmup temps
M117 Nozzle preheat
M104 S100 ; preheat extruder to no ooze temp
M140 S[first_layer_bed_temperature] ; set bed temp
M190 S[first_layer_bed_temperature] ; wait for bed final temp
M300 S40 P10 ; Bip
; Home
M117 Homing
G28 ; home all with default mesh bed level
; For ABL users put G29 for a leveling request
; Final warmup routine
M117 Final warmup
M104 S{first_layer_temperature[initial_extruder]+extruder_temperature_offset[initial_extruder]} ; set extruder final temp
M109 S{first_layer_temperature[initial_extruder]+extruder_temperature_offset[initial_extruder]} ; wait for extruder final temp
M190 S[first_layer_bed_temperature] ; wait for bed final temp
M300 S440 P200     ; 1st beep for printer ready and allow some time to clean nozzle
M300 S0 P250       ; wait between dual beep
M300 S440 P200     ; 2nd beep for printer ready
G4 S10             ; wait to clean the nozzle
M300 S440 P200     ; 3rd beep for ready to start printing
; Prime line routine
M117 Printing prime line
;M900 K0; Disable Linear Advance (Marlin) for prime line
G92 E0.0; reset extrusion distance
G1 X-54.672 Y-95.203 Z0.3 F4000; go outside print area
G92 E0.0; reset extrusion distance
G1 E2 F1000 ; de-retract and push ooze
G3 X38.904 Y-102.668 I54.672 J95.105 E20.999
G3 X54.671 Y-95.203 I-38.815 J102.373 E5.45800
G92 E0.0
G1 E-5 F3000 ; retract 5mm
G1 X52.931 Y-96.185 F1000 ; wipe
G1 X50.985 Y-97.231 F1000 ; wipe
G1 X49.018 Y-98.238 F1000 ; wipe
G1 X0 Y-109.798 F1000
G1 E4.8 F1500; de-retract
G92 E0.0 ; reset extrusion distance
; Final print adjustments
M117 Preparing to print
;M82 ; extruder absolute mode
M221 S{if layer_height<0.075}100{else}95{endif}
M300 S40 P10 ; chirp
M117 Print [input_filename]; Display: Printing started...