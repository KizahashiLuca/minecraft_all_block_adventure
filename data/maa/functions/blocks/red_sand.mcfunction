##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Set common scoreboard
function maa:block_count/main

## Send message
title @a title ["",{"translate":"block.minecraft.red_sand","color":"green"}]
title @a subtitle ["",{"translate":"入手","color":"green"}]
tellraw @a ["",{"text":"[GABA]","color":"aqua"},{"text":" "},{"translate":"block.minecraft.red_sand","color":"green"},{"text":"を入手。"}]
