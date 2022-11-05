##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

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

## Set scoreboards for calculation
scoreboard players set #mei MEI_45 45
scoreboard players set #mei MEI_60 60
scoreboard players set #mei MEI_1000 1000