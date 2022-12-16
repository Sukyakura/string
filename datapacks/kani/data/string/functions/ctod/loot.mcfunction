# lootを用いた探索

forceload add 0 0
data remove storage string: out
data modify block 0 -64 0 Text1 set value '{"nbt":"in","storage":"string:","interpret":true}'
kill @e[type=minecraft:armor_stand,tag=sk_string_ctod]
summon minecraft:armor_stand 0.5 -63.5 0.5 {Tags:["sk_string_ctod"],Invulnerable:1b,Marker:1b,NoGravity:1b}
data modify entity @e[type=minecraft:armor_stand,tag=sk_string_ctod,limit=1] HandItems[0] set value {id:"minecraft:stone",Count:1b}
data modify entity @e[type=minecraft:armor_stand,tag=sk_string_ctod,limit=1] HandItems[0].tag.in set from block 0 -64 0 Text1
execute as @e[type=minecraft:armor_stand,tag=sk_string_ctod,limit=1] run loot replace entity @e[type=minecraft:armor_stand,tag=sk_string_ctod,limit=1] weapon.offhand loot string:ctod
data modify storage string: out set from entity @e[type=minecraft:armor_stand,tag=sk_string_ctod,limit=1] HandItems[1].tag.out
