##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Add a tag
tag @p[predicate=mei:system/not_set] add MEI_Calculating
tag @p[tag=MEI_Calculating] add MEI_Calculated

## Set daytime
function mei:system/daytime/main

## Set position
function mei:system/position/main

## Set direction
function mei:system/direction/main

## Set biome
function mei:system/biome/main

## Title actionbar
title @p[tag=MEI_Calculating] actionbar ["",{"storage":"mei:storage","nbt":"actionbar.daytime","interpret":true},{"storage":"mei:storage","nbt":"actionbar.position","interpret":true},{"storage":"mei:storage","nbt":"actionbar.direction","interpret":true},{"storage":"mei:storage","nbt":"actionbar.biome","interpret":true}]

## Reset storage
data remove storage mei:storage actionbar

## Remove a tag
tag @a remove MEI_Calculating

## Set position loop
execute if entity @p[predicate=mei:system/not_set] run function mei:system/main