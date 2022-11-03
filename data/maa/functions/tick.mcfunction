##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Detect game start
scoreboard objectives add GameTime minecraft.custom:minecraft.play_time
scoreboard objectives add Reseted dummy
execute if entity @p[scores={GameTime=1}] at @p[scores={GameTime=1}] unless score #maa Reseted matches 1 run function maa:start

## Detect death
execute if entity @p[scores={Death=1..}] run function maa:death