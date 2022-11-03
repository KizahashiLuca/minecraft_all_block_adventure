##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Set biome
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/mountains/frozen_peaks] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.frozen_peaks","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/mountains/grove] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.grove","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/mountains/jagged_peaks] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.jagged_peaks","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/mountains/meadow] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.meadow","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/mountains/snowy_slopes] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.snowy_slopes","color":"green","bold":true}]'
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/mountains/stony_peaks] run data modify storage mei:storage actionbar.biome set value '["",{"translate":"biome.minecraft.stony_peaks","color":"green","bold":true}]'