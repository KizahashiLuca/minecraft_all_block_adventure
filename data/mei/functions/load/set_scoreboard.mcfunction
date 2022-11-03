##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Add scoreboards
scoreboard objectives add MEI_Version dummy
scoreboard objectives add MEI_OnLoad dummy
## Add scoreboards for position
scoreboard objectives add MEI_PosX dummy
scoreboard objectives add MEI_PosY dummy
scoreboard objectives add MEI_PosZ dummy
## Add scoreboards for direction
scoreboard objectives add MEI_Direction dummy
## Add scoreboards for daytime
scoreboard objectives add MEI_DayTime dummy
scoreboard objectives add MEI_DayTimeHour dummy
scoreboard objectives add MEI_DayTimeMin dummy
## Add scoreboards for calculation
scoreboard objectives add MEI_45 dummy
scoreboard objectives add MEI_60 dummy
scoreboard objectives add MEI_1000 dummy
## Add scoreboards for settings
scoreboard objectives add MEI_Settings trigger
scoreboard objectives add MEI_SetTime trigger
scoreboard objectives add MEI_SetPos trigger
scoreboard objectives add MEI_SetDir trigger
scoreboard objectives add MEI_SetBiome trigger
scoreboard objectives add MEI_ShowTime dummy
scoreboard objectives add MEI_ShowPos dummy
scoreboard objectives add MEI_ShowDir dummy
scoreboard objectives add MEI_ShowBiome dummy

## Set scoreboards
scoreboard players set #mei MEI_Version 2860
scoreboard players set #mei MEI_OnLoad 1
## Set scoreboards for calculation
scoreboard players set #mei MEI_45 45
scoreboard players set #mei MEI_60 60
scoreboard players set #mei MEI_1000 1000
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