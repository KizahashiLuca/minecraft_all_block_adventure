##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Nether Gate
execute positioned 0 90 0 run summon minecraft:marker ~ ~ ~ {Tags:["MAA_EndGate"],NoGravity:1b,Invulnerable:1b}
execute positioned 0 90 0 run spreadplayers ~ ~ 0 20 true @e[tag=MAA_EndGate,limit=1]
execute at @e[tag=MAA_EndGate,limit=1] run place template maa:end_gate ~ ~ ~ none
execute store result score @e[tag=MAA_EndGate,limit=1] MEI_PosX run data get entity @e[tag=MAA_EndGate,limit=1] Pos[0]
execute store result score @e[tag=MAA_EndGate,limit=1] MEI_PosY run data get entity @e[tag=MAA_EndGate,limit=1] Pos[1]
execute store result score @e[tag=MAA_EndGate,limit=1] MEI_PosZ run data get entity @e[tag=MAA_EndGate,limit=1] Pos[2]
execute at @e[tag=MAA_EndGate,limit=1] run tellraw @a ["",{"text":"[GABA]","color":"aqua"},{"text":" "},{"text":"エンドゲート","color":"green"},{"text":"が"},{"translate":" (%s, %s, %s) ","with":[{"score":{"name":"@e[tag=MAA_EndGate,limit=1]","objective":"MEI_PosX"},"color":"green"},{"score":{"name":"@e[tag=MAA_EndGate,limit=1]","objective":"MEI_PosY"},"color":"green"},{"score":{"name":"@e[tag=MAA_EndGate,limit=1]","objective":"MEI_PosZ"},"color":"green"}]},{"text":"付近に生成されました。"}]