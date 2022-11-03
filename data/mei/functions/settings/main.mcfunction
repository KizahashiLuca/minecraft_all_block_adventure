##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Add tags
tag @p[predicate=mei:settings/main] add MEI_DoingSetUp
tag @p[tag=MEI_DoingSetUp] add MEI_DoneSetUp

## Send messages of settings
tellraw @p[tag=MEI_DoingSetUp] [""]
tellraw @p[tag=MEI_DoingSetUp] ["",{"text":"-----------------------------","color":"white"}]
tellraw @p[tag=MEI_DoingSetUp] ["",{"text":" Minecraft Extra Info","color":"red","bold":true}]
tellraw @p[tag=MEI_DoingSetUp] ["",{"text":"  Settings","color":"gray","bold":true}]
tellraw @p[tag=MEI_DoingSetUp,scores={MEI_ShowTime=1}] ["",{"text":"    - ","color":"white"},{"text":"Remove DayTime","clickEvent":{"action":"run_command","value":"/trigger MEI_SetTime set 1"},"hoverEvent":{"action":"show_text","value":"Click to remove daytime"},"color":"light_purple","underlined":true}]
tellraw @p[tag=MEI_DoingSetUp,scores={MEI_ShowTime=0}] ["",{"text":"    - ","color":"white"},{"text":"Show DayTime","clickEvent":{"action":"run_command","value":"/trigger MEI_SetTime set 1"},"hoverEvent":{"action":"show_text","value":"Click to show daytime"},"color":"aqua","underlined":true}]
tellraw @p[tag=MEI_DoingSetUp,scores={MEI_ShowPos=1}] ["",{"text":"    - ","color":"white"},{"text":"Remove Position","clickEvent":{"action":"run_command","value":"/trigger MEI_SetPos set 1"},"hoverEvent":{"action":"show_text","value":"Click to remove position"},"color":"light_purple","underlined":true}]
tellraw @p[tag=MEI_DoingSetUp,scores={MEI_ShowPos=0}] ["",{"text":"    - ","color":"white"},{"text":"Show Position","clickEvent":{"action":"run_command","value":"/trigger MEI_SetPos set 1"},"hoverEvent":{"action":"show_text","value":"Click to show position"},"color":"aqua","underlined":true}]
tellraw @p[tag=MEI_DoingSetUp,scores={MEI_ShowDir=1}] ["",{"text":"    - ","color":"white"},{"text":"Remove Direction","clickEvent":{"action":"run_command","value":"/trigger MEI_SetDir set 1"},"hoverEvent":{"action":"show_text","value":"Click to remove direction"},"color":"light_purple","underlined":true}]
tellraw @p[tag=MEI_DoingSetUp,scores={MEI_ShowDir=0}] ["",{"text":"    - ","color":"white"},{"text":"Show Direction","clickEvent":{"action":"run_command","value":"/trigger MEI_SetDir set 1"},"hoverEvent":{"action":"show_text","value":"Click to show direction"},"color":"aqua","underlined":true}]
tellraw @p[tag=MEI_DoingSetUp,scores={MEI_ShowBiome=1}] ["",{"text":"    - ","color":"white"},{"text":"Remove Biome","clickEvent":{"action":"run_command","value":"/trigger MEI_SetBiome set 1"},"hoverEvent":{"action":"show_text","value":"Click to remove biome"},"color":"light_purple","underlined":true}]
tellraw @p[tag=MEI_DoingSetUp,scores={MEI_ShowBiome=0}] ["",{"text":"    - ","color":"white"},{"text":"Show Biome","clickEvent":{"action":"run_command","value":"/trigger MEI_SetBiome set 1"},"hoverEvent":{"action":"show_text","value":"Click to show biome"},"color":"aqua","underlined":true}]
tellraw @p[tag=MEI_DoingSetUp] ["",{"text":"-----------------------------","color":"white"}]
tellraw @p[tag=MEI_DoingSetUp] [""]

## Remove a tag
tag @a remove MEI_DoingSetUp

## Trigger settings
execute if entity @p[predicate=mei:settings/main] run function mei:settings/main

## Remove a tag
tag @a remove MEI_DoneSetUp