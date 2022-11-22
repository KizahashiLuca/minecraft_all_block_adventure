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
advancement grant @a only maa:blocks/1_end
advancement grant @a only maa:blocks/2_end
advancement grant @a only maa:blocks/3_end
advancement grant @a only maa:blocks/4_end
advancement grant @a only maa:blocks/5_end
advancement grant @a only maa:blocks/6_end
advancement grant @a only maa:blocks/7_end
advancement grant @a only maa:blocks/8_end
advancement grant @a only maa:blocks/9_end
advancement grant @a only maa:blocks/10_end
advancement grant @a only maa:blocks/11_end
advancement grant @a only maa:blocks/12_end
advancement grant @a only maa:blocks/13_end
advancement grant @a only maa:blocks/14_end
advancement grant @a only maa:blocks/15_end
advancement grant @a only maa:blocks/16_end
advancement grant @a only maa:blocks/17_end
advancement grant @a only maa:blocks/18_end
advancement grant @a only maa:blocks/19_end
advancement grant @a only maa:blocks/20_end
advancement grant @a only maa:blocks/21_end
advancement grant @a only maa:blocks/22_end
advancement grant @a only maa:blocks/23_end
advancement grant @a only maa:blocks/24_end
advancement grant @a only maa:blocks/25_end
advancement grant @a only maa:blocks/26_end
advancement grant @a only maa:blocks/27_end
advancement grant @a only maa:blocks/28_end
advancement grant @a only maa:blocks/29_end
advancement grant @a only maa:blocks/30_end
advancement grant @a only maa:blocks/31_end
advancement grant @a only maa:blocks/32_end
advancement grant @a only maa:blocks/33_end
advancement grant @a only maa:blocks/34_end
advancement grant @a only maa:blocks/35_end
advancement grant @a only maa:blocks/36_end
advancement grant @a only maa:blocks/37_end
advancement grant @a only maa:blocks/38_end
advancement grant @a only maa:blocks/39_end
advancement grant @a only maa:blocks/40_end
advancement grant @a only maa:blocks/41_end
advancement grant @a only maa:blocks/42_end
advancement grant @a only maa:blocks/43_end
advancement grant @a only maa:blocks/44_end
advancement grant @a only maa:blocks/45_end
advancement grant @a only maa:blocks/46_end
advancement grant @a only maa:blocks/47_end
advancement grant @a only maa:blocks/48_end
advancement grant @a only maa:blocks/49_end
advancement grant @a only maa:blocks/50_end
advancement grant @a only maa:blocks/51_end
advancement grant @a only maa:blocks/52_end
advancement grant @a only maa:blocks/53_end
advancement grant @a only maa:blocks/54_end
advancement grant @a only maa:blocks/55_end
advancement grant @a only maa:blocks/56_end
advancement grant @a only maa:blocks/57_end
advancement grant @a only maa:blocks/57_end

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