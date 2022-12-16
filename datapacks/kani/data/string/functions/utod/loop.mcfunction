# 2分探索するループ

scoreboard players operation #Alice sk_string_utod *= #Alice sk_string_utod_2
execute if score #Alice sk_string_utod matches 0.. run data modify storage string: utod set from storage string: utod[0]
execute if score #Alice sk_string_utod matches ..-1 run data modify storage string: utod set from storage string: utod[1]
execute unless data storage string: utod[1] run data modify storage string: out set from storage string: utod
execute if data storage string: utod[1] run function string:utod/loop 
