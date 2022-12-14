# 文字列分割2

#コウモリのtagを変更
data modify storage string: comp.tag set value ["sk_string_dummy1","sk_string_dummy2","sk_string_dummy3"]
data modify entity @e[type=minecraft:bat,name="sk_string_bat",scores={sk_string=1},limit=1] Tags set from storage string: comp.tag
data modify storage string: comp.tag set value ["sk_string_dummy1, sk_string_dummy2, sk_string_dummy3"]
data modify storage string: comp.tag append from block ~ ~-2 ~ LastOutput
data modify storage string: comp.tag append from block ~ ~-1 ~ LastOutput
data modify entity @e[type=minecraft:bat,name="sk_string_bat",scores={sk_string=2},limit=1] Tags set from storage string: comp.tag

#文字数をカウント
execute if score #Alice sk_string matches 0 run function string:split/count
