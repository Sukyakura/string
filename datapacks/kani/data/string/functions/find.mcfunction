# 文字列の検索
#
# 引数 : 検索元の分割文字リストと検索する分割文字リスト
#        string: in に代入 [検索元の分割文字リスト, 検索する分割文字リスト]
#
# 戻り値 : 発見した位置のリスト
#        string: out に格納される
#

data modify storage string: find.in set from storage string: in
data modify storage string: out set value []
scoreboard objectives add sk_string_find_idx dummy
scoreboard objectives add sk_string_find_max dummy
scoreboard objectives add sk_string_find_len dummy
scoreboard players set #Alice sk_string_find_max 0
scoreboard players set #Alice sk_string_find_len 0
execute store result score #Alice sk_string_find_max run data get storage string: find.in[0]
execute store result score #Alice sk_string_find_len run data get storage string: find.in[1]
scoreboard players operation #Alice sk_string_find_max -= #Alice sk_string_find_len
scoreboard players add #Alice sk_string_find_max 1
data modify storage string: find.q set value []
scoreboard players set #Alice sk_string_find_idx 0
execute unless score #Alice sk_string_find_len = #Alice sk_string_find_idx run function string:find/queue
scoreboard players set #Alice sk_string_find_idx 0
execute unless score #Alice sk_string_find_len matches 0 unless score #Alice sk_string_find_max = #Alice sk_string_find_idx run function string:find/search
