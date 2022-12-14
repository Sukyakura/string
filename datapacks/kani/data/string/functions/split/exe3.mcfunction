# 文字列分割3

#コウモリの名前を変更
data modify storage string: comp.tag append from block ~ ~-1 ~-1 LastOutput
data modify block 0 -64 0 Text1 set value '{"text":"","extra":[{"nbt":"comp.tag[3]","storage":"string:","interpret":true},{"text":", "},{"nbt":"comp.tag[1]","storage":"string:"},{"text":", "},{"nbt":"comp.tag[2]","storage":"string:"}]}'
data modify entity @e[type=minecraft:bat,tag=sk_string_bat_tag,limit=1] CustomName set from block 0 -64 0 Text1
data modify entity @e[type=minecraft:bat,tag=sk_string_bat_comp,limit=1] CustomName set from block ~ ~ ~-1 LastOutput
