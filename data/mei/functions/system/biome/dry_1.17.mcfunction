##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Set biome
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/dry/badlands_plateau] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.badlands_plateau","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/dry/badlands] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.badlands","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/dry/desert_hills] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.desert_hills","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/dry/desert_lakes] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.desert_lakes","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/dry/desert] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.desert","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/dry/eroded_badlands] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.eroded_badlands","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/dry/modified_badlands_plateau] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.modified_badlands_plateau","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/dry/modified_wooded_badlands_plateau] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.modified_wooded_badlands_plateau","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/dry/savanna_plateau] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.savanna_plateau","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/dry/savanna] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.savanna","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/dry/shattered_savanna_plateau] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.shattered_savanna_plateau","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/dry/shattered_savanna] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.shattered_savanna","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/dry/wooded_badlands_plateau] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.wooded_badlands_plateau","color":"green","bold":true}]'