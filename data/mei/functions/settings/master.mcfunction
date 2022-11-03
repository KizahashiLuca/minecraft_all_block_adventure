##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Branch
execute if entity @p[predicate=mei:settings/main] run function mei:settings/main
execute if entity @p[predicate=mei:settings/daytime] run function mei:settings/daytime
execute if entity @p[predicate=mei:settings/position] run function mei:settings/position
execute if entity @p[predicate=mei:settings/direction] run function mei:settings/direction
execute if entity @p[predicate=mei:settings/biome] run function mei:settings/biome