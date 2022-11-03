#!/bin/bash

##################################
## Minecraft All Block Adventure
## MC-Version: JE 1.19.2
## Author    : @KizahashiLuca
## Date      : 27 Oct 2022
## Version   : β-1.0
## Licensed under CC BY-SA 4.0.
##################################

## Set path
BlockList=./block_list.csv
declare -a ColorArray=("white" "light_gray" "gray" "black" "brown" "red" "orange" "yellow" "lime" "green" "cyan" "light_blue" "blue" "purple" "magenta" "pink")

## Read CSV
i=0
declare -a ItemArray=()
while read R; do
  col[0]=`echo ${R} | cut -d , -f 1`
  ItemArray+=( "${col[0]}" )

  ## Skip first row
  if [ "${col[0]}" = "" ]; then
    i=0
    declare -a ItemArray=()
    continue;
  fi

  ## Add lines
  AdvancementsJson=./data/maa/advancements/blocks/${ItemArray[$i]}.json
  if [ $i == 0 ]; then
    parent=blocks
  else
    parent=blocks/${ItemArray[$i-1]}
  fi
  cat << EOS > ${AdvancementsJson}
{
  "parent": "maa:${parent}",
  "display": {
    "icon": {
      "item": "minecraft:${ItemArray[$i]}"
    },
    "title": {
      "translate": "block.minecraft.${ItemArray[$i]}"
    },
    "description": "",
    "announce_to_chat": false,
    "frame": "task",
    "hidden": false,
    "show_toast": false
  },
  "criteria": {
    "${ItemArray[$i]}": {
      "trigger": "minecraft:inventory_changed",
      "conditions": {
        "items": [
          {
            "items": [
              "minecraft:${ItemArray[$i]}"
            ]
          }
        ]
      }
    }
  },
  "requirements": [
    ["${ItemArray[$i]}"]
  ],
  "rewards": {
    "function": "maa:blocks/${ItemArray[$i]}"
  }
}
EOS

  Mcfunction=./data/maa/functions/blocks/${ItemArray[$i]}.mcfunction
  cat << EOS > ${Mcfunction}
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
tellraw @a ["",{"text":"[MAA]","color":"aqua"},{"text":" "},{"translate":"block.minecraft.${ItemArray[$i]}","color":"green"},{"text":"を入手。"}]
EOS

  ## Increment
  i=$((i+1))
done < ${BlockList}
