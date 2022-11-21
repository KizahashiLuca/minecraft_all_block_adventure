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
declare -a NumberArray=("50" "51" "52" "53" "54" "55" "56" "57" "4" "5" "2" "3" "1" "8" "9" "6" "7" "26" "27" "28" "29" "30" "31" "32" "33" "34" "35" "36" "37" "38" "39" "40" "41" "42" "43" "44" "45" "46" "47" "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "21" "22" "23" "24" "25" "48" "49")

## Read CSV
i=0
j=0
declare -a ItemArray=()
while read R; do
  col[0]=`echo ${R} | cut -d , -f 1`
  col[1]=`echo ${R} | cut -d , -f 2`
  col[2]=`echo ${R} | cut -d , -f 3`

  ## Skip row
  if [ "${col[0]}" = "" ]; then
    i=0
    j=$((j+1))
    echo $j
    declare -a ItemArray=()
    continue;
  fi

  ## Store blocks
  if [ "${col[1]}" = "x" ]; then
    ItemArray+=( "${col[0]}" )
  elif [ "${col[1]}" = "" ]; then
    continue;
  fi

  ## Add lines
  if [ $i == 0 ]; then
    AdvancementsJson=./data/maa/advancements/blocks/${NumberArray[$j]}.json
    parent=blocks
  elif [ $i == 1 ]; then
    AdvancementsJson=./data/maa/advancements/blocks/${ItemArray[$i]}.json
    parent=blocks/${NumberArray[$j]}
  else
    AdvancementsJson=./data/maa/advancements/blocks/${ItemArray[$i]}.json
    parent=blocks/${ItemArray[$i-1]}
  fi
  echo ${col[0]} ${col[1]} ${ItemArray[$i]}
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
tellraw @a ["",{"text":"[GABA]","color":"aqua"},{"text":" "},{"translate":"block.minecraft.${ItemArray[$i]}","color":"green"},{"text":"を入手。"}]
EOS

  ## Increment
  i=$((i+1))
done < ${BlockList}
