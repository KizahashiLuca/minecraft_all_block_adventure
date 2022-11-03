##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Set biome
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/temperate_2/bamboo_jungle] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.bamboo_jungle","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/temperate_2/beach] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.beach","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/temperate_2/jungle] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.jungle","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/temperate_2/sparse_jungle] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.sparse_jungle","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/temperate_2/mushroom_fields] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.mushroom_fields","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/temperate_2/swamp] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.swamp","color":"green","bold":true}]'