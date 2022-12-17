# 文字列分割4

#コマブロの出力を比較
data modify storage string: comp.last set from block ~ ~2 ~ LastOutput
execute store success storage string: comp.eq byte 1 run data modify storage string: comp.last set from block ~ ~1 ~ LastOutput
execute if data storage string: {comp:{eq:0b}} run scoreboard players operation @e[type=minecraft:armor_stand,tag=sk_string_split,limit=1] sk_string_split_u -= #Alice sk_string_split_u
execute store result storage string: comp.phase int 1 run data get storage string: comp.phase 0.5
