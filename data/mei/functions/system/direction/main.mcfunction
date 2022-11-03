##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Set direction
execute store result score @p[tag=MEI_Calculating] MEI_Direction run data get entity @p[tag=MEI_Calculating] Rotation[0] 1
scoreboard players add @p[tag=MEI_Calculating] MEI_Direction 22
scoreboard players add @p[tag=MEI_Calculating,scores={MEI_Direction=..0}] MEI_Direction 360
scoreboard players operation @p[tag=MEI_Calculating] MEI_Direction /= #mei MEI_45

execute if entity @p[predicate=mei:system/direction/dir_setsouth] run data modify storage mei:storage actionbar.direction set value '["",{"text":"S","color":"aqua","bold":true},{"text":"   "}]'
execute if entity @p[predicate=mei:system/direction/dir_setsouthwest] run data modify storage mei:storage actionbar.direction set value '["",{"text":"SW","color":"aqua","bold":true},{"text":"   "}]'
execute if entity @p[predicate=mei:system/direction/dir_setwest] run data modify storage mei:storage actionbar.direction set value '["",{"text":"W","color":"aqua","bold":true},{"text":"   "}]'
execute if entity @p[predicate=mei:system/direction/dir_setnorthwest] run data modify storage mei:storage actionbar.direction set value '["",{"text":"NW","color":"aqua","bold":true},{"text":"   "}]'
execute if entity @p[predicate=mei:system/direction/dir_setnorth] run data modify storage mei:storage actionbar.direction set value '["",{"text":"N","color":"aqua","bold":true},{"text":"   "}]'
execute if entity @p[predicate=mei:system/direction/dir_setnortheast] run data modify storage mei:storage actionbar.direction set value '["",{"text":"NE","color":"aqua","bold":true},{"text":"   "}]'
execute if entity @p[predicate=mei:system/direction/dir_seteast] run data modify storage mei:storage actionbar.direction set value '["",{"text":"E","color":"aqua","bold":true},{"text":"   "}]'
execute if entity @p[predicate=mei:system/direction/dir_setsoutheast] run data modify storage mei:storage actionbar.direction set value '["",{"text":"SE","color":"aqua","bold":true},{"text":"   "}]'