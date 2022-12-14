# 2分探索するループ

scoreboard players operation #Alice sk_string_utoc *= #Alice sk_string_utoc_2
execute if score #Alice sk_string_utoc matches 0.. run data modify storage string: utoc set from storage string: utoc[0]
execute if score #Alice sk_string_utoc matches ..-1 run data modify storage string: utoc set from storage string: utoc[1]
execute unless data storage string: utoc[1] run data modify storage string: out set from storage string: utoc
execute if data storage string: utoc[1] run function string:utoc/loop 
