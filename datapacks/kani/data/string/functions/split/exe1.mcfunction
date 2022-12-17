# 文字列分割1

execute store result score #Alice sk_string_split_u run data get storage string: comp.phase
scoreboard players operation @e[type=minecraft:armor_stand,tag=sk_string_split,limit=1] sk_string_split_u += #Alice sk_string_split_u
execute as @e[type=minecraft:armor_stand,tag=sk_string_split,limit=1] run loot replace entity @s weapon.offhand loot string:split
data modify storage string: comp.text[1] set from entity @e[type=minecraft:armor_stand,tag=sk_string_split,limit=1] HandItems[1].tag.out
data modify block 0 -64 0 Text1 set value '{"text":"","extra":[{"nbt":"comp.text","storage":"string:","interpret":true},{"nbt":"HandItems[1].tag.out.c","entity":"@e[type=minecraft:armor_stand,tag=sk_string_split,limit=1]","interpret":true},{"text":" "}]}'
data modify entity @e[type=minecraft:bat,tag=sk_string_bat_comp,limit=1] CustomName set from block 0 -64 0 Text1
execute if data storage string: {setair:1b} run data modify storage string: comp.log set from block ~ ~-1 ~ LastOutput
execute if data storage string: {setair:1b} run data modify storage string: setair set value 0b
