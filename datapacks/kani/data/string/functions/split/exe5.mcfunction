# 文字列分割5

#コマブロの時間出力が途中変化していたら無効化する
execute store success storage string: comp.eq byte 1 run data modify storage string: comp.log set from block ~ ~1 ~ LastOutput
execute if data storage string: {comp:{eq:0b}} as @e[type=minecraft:armor_stand,tag=sk_string_split,limit=1] run loot replace entity @s weapon.offhand loot string:split
execute if data storage string: {comp:{eq:0b}} run data modify storage string: out append from entity @e[type=minecraft:armor_stand,tag=sk_string_split,limit=1] HandItems[1].tag.out
execute if data storage string: {comp:{eq:0b}} run data modify block 0 -64 0 Text1 set value '{"nbt":"comp.text","storage":"string:","interpret":true,"extra":[{"nbt":"out[-1].c","storage":"string:","interpret":true}]}'
execute if data storage string: {comp:{eq:0b}} run data modify storage string: comp.text set from block 0 -64 0 Text1

#代入
scoreboard players set @e[type=minecraft:armor_stand,tag=sk_string_split,limit=1] sk_string_split_u 0
data modify storage string: comp.phase set value 32768

#開始時間取得フラグをオンに
data modify storage string: setair set value 1b

#文字数が一致しているなら終了
execute if data storage string: {comp:{innum:0}} run data modify storage string: out set value []
execute if data storage string: {comp:{eq:0b}} store result storage string: comp.outnum int 1 run data get storage string: out[-1].c
execute if data storage string: {comp:{eq:0b,outnum:12}} run scoreboard players add #Alice sk_string_split_i 1
execute if data storage string: {comp:{eq:0b,outnum:13}} run scoreboard players add #Alice sk_string_split_i 2
execute if data storage string: {comp:{eq:0b,outnum:17}} run scoreboard players add #Alice sk_string_split_i 6
execute store result storage string: comp.outnum int 1 run scoreboard players get #Alice sk_string_split_i
execute store success storage string: comp.eq byte 1 run data modify storage string: comp.outnum set from storage string: comp.innum
execute if data storage string: {comp:{eq:0b}} run setblock ~ ~-1 ~ minecraft:air
execute if data storage string: {comp:{eq:0b}} run schedule function string:split/cut 1t replace
