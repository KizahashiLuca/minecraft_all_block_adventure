##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Set daytime
execute store result score @p[tag=MEI_Calculating] MEI_DayTime run time query daytime
scoreboard players operation @p[tag=MEI_Calculating] MEI_DayTimeHour = @p[tag=MEI_Calculating] MEI_DayTime
scoreboard players operation @p[tag=MEI_Calculating] MEI_DayTimeMin = @p[tag=MEI_Calculating] MEI_DayTime
scoreboard players add @p[tag=MEI_Calculating] MEI_DayTimeHour 6000
scoreboard players operation @p[tag=MEI_Calculating] MEI_DayTimeHour /= #mei MEI_1000
scoreboard players remove @p[tag=MEI_Calculating,scores={MEI_DayTimeHour=24..}] MEI_DayTimeHour 24
scoreboard players operation @p[tag=MEI_Calculating] MEI_DayTimeMin %= #mei MEI_1000
scoreboard players operation @p[tag=MEI_Calculating] MEI_DayTimeMin *= #mei MEI_60
scoreboard players operation @p[tag=MEI_Calculating] MEI_DayTimeMin /= #mei MEI_1000

execute if entity @p[predicate=mei:system/daytime/day_setzero] run data modify storage mei:storage actionbar.daytime set value '["",{"score":{"name":"@p[tag=MEI_Calculating]","objective": "MEI_DayTimeHour"},"color":"gold","bold":true},{"text":":0","color":"gold","bold":true},{"score":{"name":"@p[tag=MEI_Calculating]","objective": "MEI_DayTimeMin"},"color":"gold","bold":true},{"text":"   "}]'
execute if entity @p[predicate=mei:system/daytime/day_notsetzero] run data modify storage mei:storage actionbar.daytime set value '["",{"score":{"name":"@p[tag=MEI_Calculating]","objective": "MEI_DayTimeHour"},"color":"gold","bold":true},{"text":":","color":"gold","bold":true},{"score":{"name":"@p[tag=MEI_Calculating]","objective": "MEI_DayTimeMin"},"color":"gold","bold":true},{"text":"   "}]'
execute if entity @p[predicate=mei:system/daytime/night_setzero] run data modify storage mei:storage actionbar.daytime set value '["",{"score":{"name":"@p[tag=MEI_Calculating]","objective": "MEI_DayTimeHour"},"color":"yellow","bold":true},{"text":":0","color":"yellow","bold":true},{"score":{"name":"@p[tag=MEI_Calculating]","objective": "MEI_DayTimeMin"},"color":"yellow","bold":true},{"text":"   "}]'
execute if entity @p[predicate=mei:system/daytime/night_notsetzero] run data modify storage mei:storage actionbar.daytime set value '["",{"score":{"name":"@p[tag=MEI_Calculating]","objective": "MEI_DayTimeHour"},"color":"yellow","bold":true},{"text":":","color":"yellow","bold":true},{"score":{"name":"@p[tag=MEI_Calculating]","objective": "MEI_DayTimeMin"},"color":"yellow","bold":true},{"text":"   "}]'