##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Set biome
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/the_end/end_barrens] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.end_barrens","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/the_end/end_highlands] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.end_highlands","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/the_end/end_midlands] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.end_midlands","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/the_end/smaal_end_islands] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.smaal_end_islands","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/the_end/the_end] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.the_end","color":"green","bold":true}]'