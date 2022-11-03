##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Set biome
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/snowy/frozen_river] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.frozen_river","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/snowy/ice_spikes] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.ice_spikes","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/snowy/snowy_beach] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.snowy_beach","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/snowy/snowy_mountains] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.snowy_mountains","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/snowy/snowy_taiga_hills] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.snowy_taiga_hills","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/snowy/snowy_taiga_mountains] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.snowy_taiga_mountains","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/snowy/snowy_taiga] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.snowy_taiga","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/snowy/snowy_tundra] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.snowy_tundra","color":"green","bold":true}]'