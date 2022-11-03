##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Set biome
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/caves/dripstone_caves] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.dripstone_caves","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/caves/lush_caves] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.lush_caves","color":"green","bold":true}]'