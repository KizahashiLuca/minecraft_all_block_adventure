##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Detect version
function mei:load/detect_version
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
## Set scoreboards for settings
scoreboard players set @a MEI_Settings 0
scoreboard players reset @a MEI_SetTime
scoreboard players reset @a MEI_SetPos
scoreboard players reset @a MEI_SetDir
scoreboard players reset @a MEI_SetBiome
scoreboard players set @a[tag=!MEI_SetPlayer] MEI_ShowTime 1
scoreboard players set @a[tag=!MEI_SetPlayer] MEI_ShowPos 1
scoreboard players set @a[tag=!MEI_SetPlayer] MEI_ShowDir 1
scoreboard players set @a[tag=!MEI_SetPlayer] MEI_ShowBiome 1
scoreboard players enable @a MEI_Settings
scoreboard players enable @a MEI_SetTime
scoreboard players enable @a MEI_SetPos
scoreboard players enable @a MEI_SetDir
scoreboard players enable @a MEI_SetBiome

## Set a tag
tag @a[tag=!MEI_SetPlayer] add MEI_SetPlayer