##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Set scoreboard
scoreboard players add 死亡数 BlockCount 1

## Loop
scoreboard players remove @p[scores={Death=1..}] Death 1
execute if entity @p[scores={Death=1..}] run function maa:death