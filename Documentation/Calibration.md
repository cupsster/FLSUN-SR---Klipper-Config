# Calibration

**Work In Progress**

Please remember that when you do ANY change to printer that chnges its mechanical properties (assembling/disassembling, belt change, idler change, etc.), you should recalibrate it.

## Klipper Calibration Routines
For general purpose infprmation how to calibrate your delta printer follow up official Klipper [configuration checks](https://www.klipper3d.org/Config_checks.html) documentation. It will guide you through process and explain it's steps as well as provide some extra usefull information. You should be able to finish calibration just by following steps outlined there.
___

## Extended Calibration Routine
This repository contains some extra macros that can help you with calibration process by automating certain repetitive tasks. If you decide to follow this guide then you need to execute this steps in order listed here.</br>
**Please be extra mindful of steps that require your probe to be attached to avoid print head craching to build plate! When probe is required it will always be listed in step description.**</br>
Following assumes that your [printer.cfg](/../Configuration/printer.cfg) is properly configured with starting values. If you are not sure, please have look at [Installation](./Installation.md).

### Extended End Stop Calibration
First thing you should do in calibration process is to perform end stop calibration as it will improve precision of other mechanic calibrations and measurements. 

| Instrument       | Active  |
| ---------------- | ------- |
| Probe Required   | **NO**  |
| Nozzle Heating   | **NO**  |
| Bed Heating      | **NO**  |
| Extruder         | **NO**  |

Prior performing this step, verify that:
* that rail carriages and ball-joints are properly lubed and you are able to move print-head freely by hand 
* that there are no obstructions to print head movement in whole build volume
* that there are no loose objects/wires dangling from printhead
* that you have sufficient and equal belt tension on all 3 towers
* that you have small snack at hand

