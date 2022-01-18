# FLSUN Super Racer - Klipper Config 
This repository contains settings for FLSUN Super Racer delta printer along with common macros.
Please read through configuration to verify your settings to avoit potential damage and/or death.

**Use at your own risk. Ensure you understand it first. I do not take any responsibility for this code!**

Repository will be updated with new macros and guides as I gain more knowledge on subject.

# Hardware
Presented configuration pinout is based on [MKS Robin Nano V3.0](https://github.com/makerbase-mks/Klipper-for-MKS-Boards) with **tmc2209** stepper drivers. You might need to modify it to match your board and drivers setup. I'm running Klipper on **RPI 3B+**.

## Upgrades
For mounting control board and RPI inside enclosure I used this [mounting bracket](https://www.thingiverse.com/thing:4980886) by [superdave42](https://www.thingiverse.com/superdave42/designs) (go say thank you to the man!) that actually fit on build plate so wise thing is to print it before you start upgrade. I suggest you do it. It will save you lots of time.</br>
Depending on your setup you might want to expose USB port. I used fixed network cable routhed through side opening on top of the base instead more common WiFi setup (can still add it later).

# Klipper Config

In [Configuration](/Configuration/) folder you will find my [printer.cfg](/Configuration/printer.cfg) file that holds values for my printer as well as [fluidd.cfg](/Configuration/fluidd.cfg) config. Most of config files has descriptions copy pasted from [Klipper](https://www.klipper3d.org/) documentation for easy reference to get you going.


# Klipper Macros

A collection of Klipper G-code macros adapted from various sources.
Most of code is commented to get better understanding of what it does.

Also, as I progress I will rename macros in a way that they are uniform and adhere to some standard. I will most likely follow practices listed on Klipper website eg.: `MY_AWESOME_MACRO` is treated in code same as `my_awesome_macro` but I will adhere to form with **capital letters** so it can be spotted in code immediately.

For acro editing I'm using [VS Code](https://code.visualstudio.com/) and Klipper Config plugin.

## Disclaimer
**Before you use any macro here provided please make double sure you understand what it does to avoid damage to your machine or magic smoke! Especially check macros that move toolhead!**

## Usage
Copy the `macros` folder alongside your printer configuration file and edit it to add:

```
[include macros/*.cfg]
```

## Configuration
You can configure some macros using [`SAVE_VARIABLE`](https://github.com/KevinOConnor/klipper/blob/master/docs/G-Codes.md#save-variables) in the following way:

```
[save_variables]
filename: ~/klipper_config/variables.cfg

[delayed_gcode macros_initialize]
initial_duration: 1
gcode:
  INITIALIZE_VARIABLE VARIABLE=park_x VALUE=30
  INITIALIZE_VARIABLE VARIABLE=park_y VALUE=30
  INITIALIZE_VARIABLE VARIABLE=bowden_length VALUE=300
```
Look into [printer.cfg](Configuration/printer.cfg) for example how to define this section.

### Parameters

Here's the list of parameters you can configure:
| Name                    | Default       | Description             |
| :---                    | :---          | :---                    |
| `park_x`                | *x_min* + 30  | Default X park position |
| `park_y`                | *y_min* + 30  | Default Y park position |
| `park_z`                | *z_min* + 30  | Default Z park position |
| `bowden_length`         | 300           | Bowden tube length      |
| `park_z_raise_ammount`  | 30            | How much to raise nozzle in relative mode |

## Macros
Growing list of macros provided in this repository (many more will come):
* [G27](/Configuration/macros/G27.cfg)
* [G29](/Configuration/macros/G29.cfg)
* [M204](/Configuration/macros/M204.cfg)
* [M205](/Configuration/macros/M205.cfg)
* [M600](/Configuration/macros/M600.cfg)
* [M701](/Configuration/macros/M701.cfg)
* [M702](/Configuration/macros/M702.cfg)
* [M900](/Configuration/macros/M900.cfg)
* [POWER_OFF](/Configuration/macros/POWER_OFF.cfg)
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

### Macro References
Code in this repository is based on **my own work** and as well **work of others** like: 
[Desuuuu](https://github.com/Desuuuu/klipper-macros), [AbomShep](https://github.com/AbomShep), [danorder](https://github.com/danorder).