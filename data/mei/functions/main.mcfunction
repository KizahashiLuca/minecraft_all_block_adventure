##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Calculate actionbar
execute if entity @p[predicate=mei:system/not_set] run function mei:system/main

## Settings
execute if entity @p[predicate=mei:settings/master] run function mei:settings/master

## Set scoreboard
function mei:set_scoreboard