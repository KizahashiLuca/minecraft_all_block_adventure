##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Start
time set 6000

## Set gamemode
gamemode adventure @a

## Revoke advancements
advancement revoke @a everything
advancement grant @a only maa:blocks

## Set spawn
setworldspawn ~ ~ ~
gamerule spawnRadius 1

## Set scoreboard
scoreboard objectives add Death deathCount
scoreboard objectives add BlockCount dummy {"text":"統計"}
scoreboard objectives setdisplay sidebar BlockCount
scoreboard players set @a Death 0
scoreboard players set 死亡数 BlockCount 0
scoreboard players set ブロック数 BlockCount 0