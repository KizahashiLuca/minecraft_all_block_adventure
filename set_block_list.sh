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
declare -a OverworldArray=()
declare -a NetherArray=()
declare -a EndArray=()
declare -a ColorArray=("white" "light_gray" "gray" "black" "brown" "red" "orange" "yellow" "lime" "green" "cyan" "light_blue" "blue" "purple" "magenta" "pink")
declare -a NumberArray=("53" "54" "55" "56" "57" "4" "5" "2" "3" "1" "8" "9" "6" "7" "26" "27" "28" "29" "30" "31" "32" "33" "34" "35" "36" "37" "38" "39" "40" "41" "42" "43" "44" "50" "51" "52" "45" "46" "47" "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "21" "22" "23" "24" "25" "48" "49")

## Remove existing files
rm ./data/maa/advancements/blocks/*
rm ./data/maa/functions/blocks/*

## Read CSV
i=0
j=0
declare -a ItemArray=()
while read R; do
  col[0]=`echo ${R} | cut -d , -f 1`
  col[1]=`echo ${R} | cut -d , -f 2`
  col[2]=`echo ${R} | cut -d , -f 3`
  col[3]=`echo ${R} | cut -d , -f 4`

  ## Skip row
  if [ "${col[0]}" = "" ]; then
    if [ $i != 0 ]; then
      ## Write advancements json
      AdvancementsJson=./data/maa/advancements/blocks/${NumberArray[$j]}_end.json
      parent=blocks/${ItemArray[$i-1]}
      cat << EOS > ${AdvancementsJson}
{
  "parent": "maa:${parent}",
  "display": {
    "icon": {
      "item": "minecraft:structure_void"
    },
    "title": "",
    "description": "",
    "announce_to_chat": false,
    "frame": "task",
    "hidden": false,
    "show_toast": false
  },
  "criteria": {
    "${NumberArray[$j]}_end": {
      "trigger": "minecraft:impossible"
    }
  },
  "requirements": [
    ["${NumberArray[$j]}_end"]
  ]
}
EOS
    fi
    i=0
    j=$((j+1))
    declare -a ItemArray=()
    continue;
  fi

  ## Store blocks
  if [ "${col[1]}" = "x" ]; then
    ItemArray+=( "${col[0]}" )
  elif [ "${col[1]}" = "" ]; then
    continue;
  fi

  ## Add to arrays
  if [ $i == 0 ]; then
    AdvancementsJson=./data/maa/advancements/blocks/${NumberArray[$j]}.json
    if [ "${col[2]}" = "x" ]; then
      parent=nether
    elif [ "${col[3]}" = "x" ]; then
      parent=end
    else
      parent=overworld
    fi
  else
    AdvancementsJson=./data/maa/advancements/blocks/${ItemArray[$i]}.json
    if [ $i == 1 ]; then
      parent=blocks/${NumberArray[$j]}
    else
      parent=blocks/${ItemArray[$i-1]}
    fi
  fi

  ## Add to arrays
  if [ "${col[2]}" = "x" ] && [ "${col[3]}" = "" ]; then
    NetherArray+=( "${ItemArray[$i]}" )
  elif [ "${col[2]}" = "" ] && [ "${col[3]}" = "x" ]; then
    EndArray+=( "${ItemArray[$i]}" )
  elif [ "${col[2]}" = "" ] && [ "${col[3]}" = "" ]; then
    OverworldArray+=( "${ItemArray[$i]}" )
  fi

  ## Write advancements json
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

  ## Write function
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

## Overworld advancements
AdvancementsJson=./data/maa/advancements/overworld.json
cat << EOS > ${AdvancementsJson}
{
  "parent": "maa:blocks",
  "display": {
    "icon": {
      "item": "minecraft:grass_block"
    },
    "title": {
      "translate": "オーバーワールド"
    },
    "description": "",
    "announce_to_chat": false,
    "frame": "challenge",
    "hidden": false,
    "show_toast": false
  },
  "criteria": {
EOS
for i in "${OverworldArray[@]}"; do
  cat << EOS >> ${AdvancementsJson}
    "$i": {
      "trigger": "minecraft:inventory_changed",
      "conditions": {
        "items": [
          {
            "items": [
              "minecraft:$i"
            ]
          }
        ]
      }
    },
EOS
done
sed -i -e '$d' ${AdvancementsJson}
cat << EOS >> ${AdvancementsJson}
    }
  },
  "requirements": [
EOS
for i in "${OverworldArray[@]}"; do
  cat << EOS >> ${AdvancementsJson}
    [
      "$i"
    ],
EOS
done
sed -i -e '$d' ${AdvancementsJson}
cat << EOS >> ${AdvancementsJson}
    ]
  ],
  "rewards": {
    "function": "maa:overworld"
  }
}
EOS

## Nether advancements
AdvancementsJson=./data/maa/advancements/nether.json
cat << EOS > ${AdvancementsJson}
{
  "parent": "maa:blocks",
  "display": {
    "icon": {
      "item": "minecraft:netherrack"
    },
    "title": {
      "translate": "ネザー"
    },
    "description": "",
    "announce_to_chat": false,
    "frame": "challenge",
    "hidden": false,
    "show_toast": false
  },
  "criteria": {
EOS
for i in "${NetherArray[@]}"; do
  cat << EOS >> ${AdvancementsJson}
    "$i": {
      "trigger": "minecraft:inventory_changed",
      "conditions": {
        "items": [
          {
            "items": [
              "minecraft:$i"
            ]
          }
        ]
      }
    },
EOS
done
sed -i -e '$d' ${AdvancementsJson}
cat << EOS >> ${AdvancementsJson}
    }
  },
  "requirements": [
EOS
for i in "${NetherArray[@]}"; do
  cat << EOS >> ${AdvancementsJson}
    [
      "$i"
    ],
EOS
done
sed -i -e '$d' ${AdvancementsJson}
cat << EOS >> ${AdvancementsJson}
    ]
  ],
  "rewards": {
    "function": "maa:nether"
  }
}
EOS

## End advancements
AdvancementsJson=./data/maa/advancements/end.json
cat << EOS > ${AdvancementsJson}
{
  "parent": "maa:blocks",
  "display": {
    "icon": {
      "item": "minecraft:end_stone"
    },
    "title": {
      "translate": "エンド"
    },
    "description": "",
    "announce_to_chat": false,
    "frame": "challenge",
    "hidden": false,
    "show_toast": false
  },
  "criteria": {
EOS
for i in "${EndArray[@]}"; do
  cat << EOS >> ${AdvancementsJson}
    "$i": {
      "trigger": "minecraft:inventory_changed",
      "conditions": {
        "items": [
          {
            "items": [
              "minecraft:$i"
            ]
          }
        ]
      }
    },
EOS
done
sed -i -e '$d' ${AdvancementsJson}
cat << EOS >> ${AdvancementsJson}
    }
  },
  "requirements": [
EOS
for i in "${EndArray[@]}"; do
  cat << EOS >> ${AdvancementsJson}
    [
      "$i"
    ],
EOS
done
sed -i -e '$d' ${AdvancementsJson}
cat << EOS >> ${AdvancementsJson}
    ]
  ],
  "rewards": {
    "function": "maa:end"
  }
}
EOS