# 文字数をカウント

execute store result score #Alice sk_string_split_i run data get block ~ ~-2 ~ LastOutput
scoreboard players remove #Alice sk_string_split_i 129
execute store result storage string: comp.innum int 1 run scoreboard players get #Alice sk_string_split_i
scoreboard players set #Alice sk_string_split_i 0
