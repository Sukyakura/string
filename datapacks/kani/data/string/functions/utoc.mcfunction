# unicode(10進数)を{u:xxxx,c:...}に変換する
#
# 引数 : 変換したいint型の数値
#        string: in に代入
#
# 戻り値 : 1文字+unicodeのcompound
#        string: out に格納される
#

data modify storage string: utoc set from storage string: unitree
scoreboard objectives remove sk_string_utoc
scoreboard objectives add sk_string_utoc dummy
scoreboard objectives add sk_string_utoc_2 dummy
scoreboard objectives add sk_string_utoc_65536 dummy
scoreboard players set #Alice sk_string_utoc_2 2
scoreboard players set #Alice sk_string_utoc_65536 65536
execute store result score #Alice sk_string_utoc run data get storage string: in
scoreboard players operation #Alice sk_string_utoc *= #Alice sk_string_utoc_65536
execute unless score #Alice sk_string_utoc = #Alice sk_string_utoc run data remove storage string: out
execute if score #Alice sk_string_utoc = #Alice sk_string_utoc if score #Alice sk_string_utoc matches 0.. run data modify storage string: utoc set from storage string: utoc[0]
execute if score #Alice sk_string_utoc = #Alice sk_string_utoc if score #Alice sk_string_utoc matches ..-1 run data modify storage string: utoc set from storage string: utoc[1]
execute if score #Alice sk_string_utoc = #Alice sk_string_utoc run function string:utoc/loop
