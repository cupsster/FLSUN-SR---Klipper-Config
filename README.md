# FLSUN-SR---Klipper-Config
This repository contains settings for FLSUN Super Racer delta printer along with common macros.
Please read through configuration to verify your settings to avoit potential damage and/or death.

Use at your own risc. I do not take any responsibility for this code!

# klipper-macros

A collection of Klipper G-code macros adapted from various sources.
Most of code is commented to get better understanding of what it does.

## Usage
Copy the `macros` folder alongside your printer configuration file and edit it to add:

```
[include macros/*.cfg]
```

## Configuration
You can configure some macros using [SAVE_VARIABLE](https://github.com/KevinOConnor/klipper/blob/master/docs/G-Codes.md#save-variables) in the following way:

```
[save_variables]
filename: ~/variables.cfg

[delayed_gcode macros_initialize]
initial_duration: 1
gcode:
  INITIALIZE_VARIABLE VARIABLE=park_x VALUE=30
  INITIALIZE_VARIABLE VARIABLE=park_y VALUE=30
  INITIALIZE_VARIABLE VARIABLE=bowden_len VALUE=300
```

Here's the list of parameters you can configure:
| Name       | Default      | Description             |
|:----------:|:------------:|:-----------------------:|
| park_x     | *x_min* + 20 | Default X park position |
| park_y     | *y_min* + 20 | Default Y park position |
| bowden_len | 100          | Bowden tube length      |

## Macros
* [G27](/Configuration/macros/G27.cfg)
* [G29](/Configuration/macros/G29.cfg)
* [M204](/Configuration/macros/M204.cfg)
* [M205](/Configuration/macros/M205.cfg)
* [M600](/Configuration/macros/M600.cfg)
* [M701](/Configuration/macros/M701.cfg)
* [M702](/Configuration/macros/M702.cfg)
* [M900](/Configuration/macros/M900.cfg)
* [POWEROFF](/Configuration/macros/POWEROFF.cfg)
* [NOTIFY](/Configuration/macros/NOTIFY.cfg)
* [LAZY_HOME](/Configuration/macros/LAZY_HOME.cfg)
* [RETRACT](/Configuration/macros/RETRACT.cfg)
* [PAUSE_PARK](/Configuration/macros/PAUSE_PARK.cfg)
* [PRE_START](/Configuration/macros/PRE_START.cfg)
* [POST_END](/Configuration/macros/POST_END.cfg)
* [WIPE_LINE](/Configuration/macros/WIPE_LINE.cfg)
* [INITIALIZE_VARIABLE](/Configuration/macros/INITIALIZE_VARIABLE.cfg)
* [SAVE_AT_END](/Configuration/macros/SAVE_AT_END.cfg) by [Makoto](https://klipper.info/macro-examples-1/makotos-conditional-config-saving)
* [SAVE_IF_SET](/Configuration/macros/SAVE_IF_SET.cfg) by [Makoto](https://klipper.info/macro-examples-1/makotos-conditional-config-saving)