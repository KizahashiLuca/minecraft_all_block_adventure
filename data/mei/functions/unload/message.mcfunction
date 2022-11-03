##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

tellraw @a [""]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":" Minecraft Extra Info","color":"red","bold":true}]
tellraw @a ["",{"text":"  Unloaded","color":"yellow","bold":true}]
tellraw @a ["",{"text":"   author  : ","color":"green","bold":false},{"text":"KizahashiLuca","color":"green","bold":false,"hoverEvent":{"action":"show_text","value":"Twitter @KizahashiLuca"},"clickEvent":{"action":"open_url","value":"http://twitter.com/KizahashiLuca"}}]
execute if predicate mei:system/biome/version/1.17 run tellraw @a ["",{"text":"   version : β-4.0 - MC 1.17","color":"dark_purple","bold":false}]
execute if predicate mei:system/biome/version/1.18 run tellraw @a ["",{"text":"   version : β-4.0 - MC 1.18","color":"dark_purple","bold":false}]
execute if predicate mei:system/biome/version/1.19 run tellraw @a ["",{"text":"   version : β-4.0 - MC 1.19","color":"dark_purple","bold":false}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a [""]