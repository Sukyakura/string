# 文字列分割1

execute if data storage string: {comp:{phase:1}} run data modify storage string: comp.text[1] set from storage string: comp.tree[1][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0].c
execute if data storage string: {comp:{phase:2}} run data modify storage string: comp.text[1] set from storage string: comp.tree[1][0][0][0][0][0][0][0][0][0][0][0][0][0][0].c
execute if data storage string: {comp:{phase:4}} run data modify storage string: comp.text[1] set from storage string: comp.tree[1][0][0][0][0][0][0][0][0][0][0][0][0][0].c
execute if data storage string: {comp:{phase:8}} run data modify storage string: comp.text[1] set from storage string: comp.tree[1][0][0][0][0][0][0][0][0][0][0][0][0].c
execute if data storage string: {comp:{phase:16}} run data modify storage string: comp.text[1] set from storage string: comp.tree[1][0][0][0][0][0][0][0][0][0][0][0].c
execute if data storage string: {comp:{phase:32}} run data modify storage string: comp.text[1] set from storage string: comp.tree[1][0][0][0][0][0][0][0][0][0][0].c
execute if data storage string: {comp:{phase:64}} run data modify storage string: comp.text[1] set from storage string: comp.tree[1][0][0][0][0][0][0][0][0][0].c
execute if data storage string: {comp:{phase:128}} run data modify storage string: comp.text[1] set from storage string: comp.tree[1][0][0][0][0][0][0][0][0].c
execute if data storage string: {comp:{phase:256}} run data modify storage string: comp.text[1] set from storage string: comp.tree[1][0][0][0][0][0][0][0].c
execute if data storage string: {comp:{phase:512}} run data modify storage string: comp.text[1] set from storage string: comp.tree[1][0][0][0][0][0][0].c
execute if data storage string: {comp:{phase:1024}} run data modify storage string: comp.text[1] set from storage string: comp.tree[1][0][0][0][0][0].c
execute if data storage string: {comp:{phase:2048}} run data modify storage string: comp.text[1] set from storage string: comp.tree[1][0][0][0][0].c
execute if data storage string: {comp:{phase:4096}} run data modify storage string: comp.text[1] set from storage string: comp.tree[1][0][0][0].c
execute if data storage string: {comp:{phase:8192}} run data modify storage string: comp.text[1] set from storage string: comp.tree[1][0][0].c
execute if data storage string: {comp:{phase:16384}} run data modify storage string: comp.text[1] set from storage string: comp.tree[1][0].c
execute if data storage string: {comp:{phase:32768}} run data modify storage string: comp.text[1] set from storage string: comp.tree[1].c
data modify block 0 -64 0 Text1 set value '{"text":"","extra":[{"nbt":"comp.text[0]","storage":"string:","interpret":true},{"nbt":"comp.text[1]","storage":"string:","interpret":true},{"text":" "}]}'
data modify entity @e[type=minecraft:bat,tag=sk_string_bat_comp,limit=1] CustomName set from block 0 -64 0 Text1
execute if data storage string: {setair:1b} run data modify storage string: comp.log set from block ~ ~-1 ~ LastOutput
execute if data storage string: {setair:1b} run data modify storage string: setair set value 0b
