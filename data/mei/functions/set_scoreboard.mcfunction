##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Remove tags
tag @a remove MEI_Calculated
## Reset scoreboards for position
scoreboard players reset @a MEI_PosX
scoreboard players reset @a MEI_PosY
scoreboard players reset @a MEI_PosZ
## Reset scoreboards for direction
scoreboard players reset @a MEI_Direction
## Reset scoreboards for daytime
scoreboard players reset @a MEI_DayTime
scoreboard players reset @a MEI_DayTimeHour
scoreboard players reset @a MEI_DayTimeMin

## Set a tag
tag @a add MEI_SetPlayer