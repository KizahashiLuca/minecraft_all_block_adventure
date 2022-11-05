##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Branch
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/cold/main] run function mei:system/biome/cold
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/dry/main] run function mei:system/biome/dry
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/ocean/main] run function mei:system/biome/ocean
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/snowy/main] run function mei:system/biome/snowy
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/temperate_1/main] run function mei:system/biome/temperate_1
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/temperate_2/main] run function mei:system/biome/temperate_2
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/mountains/main] run function mei:system/biome/mountains
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/the_end/main] run function mei:system/biome/the_end
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/the_nether/main] run function mei:system/biome/the_nether
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/the_other/main] run function mei:system/biome/the_other
execute if entity @p[tag=MEI_Calculating,predicate=mei:system/biome/caves/main] run function mei:system/biome/caves