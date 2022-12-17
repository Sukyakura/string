# lootを用いた探索

forceload add 0 0
data remove storage string: out
scoreboard objectives add sk_string_utod dummy
kill @e[type=minecraft:armor_stand,tag=sk_string_utod]
summon minecraft:armor_stand 0.5 -64.0 0.5 {Tags:["sk_string_utod"],Invulnerable:1b,Marker:1b,NoGravity:1b}
data modify entity @e[type=minecraft:armor_stand,tag=sk_string_utod,limit=1] HandItems[0] set value {id:"minecraft:stone",Count:1b}
execute store result score @e[type=minecraft:armor_stand,tag=sk_string_utod,limit=1] sk_string_utod run data get storage string: in
execute as @e[type=minecraft:armor_stand,tag=sk_string_utod,limit=1] run loot replace entity @s weapon.offhand loot string:utod
execute as @e[type=minecraft:armor_stand,tag=sk_string_utod,limit=1] if score @s sk_string_utod matches 0..65535 run data modify storage string: out set from entity @s HandItems[1].tag.out
