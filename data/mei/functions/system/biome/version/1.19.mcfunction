##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Set biome
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/cold/1.18] run function mei:system/biome/cold_1.18
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/dry/1.18] run function mei:system/biome/dry_1.18
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/ocean/1.18] run function mei:system/biome/ocean_1.18
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/snowy/1.18] run function mei:system/biome/snowy_1.18
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/temperate_1/1.18] run function mei:system/biome/temperate_1_1.18
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/temperate_2/1.19] run function mei:system/biome/temperate_2_1.19
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/mountains/main] run function mei:system/biome/mountains
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/the_end/main] run function mei:system/biome/the_end
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/the_nether/main] run function mei:system/biome/the_nether
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/the_other/main] run function mei:system/biome/the_other
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/caves/1.19] run function mei:system/biome/caves_1.19