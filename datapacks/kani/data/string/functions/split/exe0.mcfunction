# 文字列分割0

#コウモリ召喚
kill @e[type=minecraft:bat,tag=sk_string_bat]
kill @e[type=minecraft:bat,name="sk_string_bat"]
summon minecraft:bat 0.5 -64.0 0.5 {Silent:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,Tags:["sk_string_bat","sk_string_bat_input"]}
summon minecraft:bat 0.5 -64.0 0.5 {Silent:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,Tags:["sk_string_bat","sk_string_bat_comp"]}
summon minecraft:bat 0.5 -64.0 0.5 {Silent:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,Tags:["sk_string_bat","sk_string_bat_tag"]}
summon minecraft:bat 0.5 -64.0 0.5 {Silent:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,CustomName:'{"text":"sk_string_bat"}',Tags:["sk_string_temp1"]}
summon minecraft:bat 0.5 -64.0 0.5 {Silent:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,CustomName:'{"text":"sk_string_bat"}',Tags:["sk_string_temp2"]}
scoreboard players set @e[type=minecraft:bat,tag=sk_string_temp1,limit=1] sk_string 1
scoreboard players set @e[type=minecraft:bat,tag=sk_string_temp2,limit=1] sk_string 2

#アマスタ召喚
kill @e[type=minecraft:armor_stand,tag=sk_string_split]
summon minecraft:armor_stand 0.5 -64.0 0.5 {Tags:["sk_string_split"],Invulnerable:1b,Marker:1b,NoGravity:1b}
data modify entity @e[type=minecraft:armor_stand,tag=sk_string_split,limit=1] HandItems[0] set value {id:"minecraft:stone",Count:1b}

#看板設置
setblock 0 -64 0 minecraft:oak_wall_sign[facing=north]

#文字列を代入
data modify block 0 -64 0 Text1 set value '{"nbt":"in","storage":"string:","interpret":true}'
data modify entity @e[type=minecraft:bat,tag=sk_string_bat_input,limit=1] CustomName set from block 0 -64 0 Text1
data modify storage string: comp.phase set value 32768
scoreboard players set @e[type=minecraft:armor_stand,tag=sk_string_split,limit=1] sk_string_split_u 0
scoreboard players set #Alice sk_string_split_i 0
data modify storage string: comp.text set value '{"text":""}'

#開始時間取得フラグをオンに
data modify storage string: setair set value 1b
