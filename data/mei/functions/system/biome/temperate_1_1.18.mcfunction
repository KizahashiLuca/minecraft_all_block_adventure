##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Set biome
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/temperate_1/birch_forest] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.birch_forest","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/temperate_1/dark_forest] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.dark_forest","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/temperate_1/flower_forest] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.flower_forest","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/temperate_1/forest] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.forest","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/temperate_1/plains] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.plains","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/temperate_1/river] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.river","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/temperate_1/sunflower_plains] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.sunflower_plains","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/temperate_1/old_growth_birch_forest] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.old_growth_birch_forest","color":"green","bold":true}]'