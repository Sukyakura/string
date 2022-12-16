# 文字列の置換
#
# 引数 : 置き換え元の分割文字リスト，置き換え部分の分割文字リスト，置き換え先の分割文字リスト
#        string: in に代入 [置き換え元の分割文字リスト, 置き換え部分の分割文字リスト, 置き換え先の分割文字リスト]
#
# 戻り値 : 置換後の分割文字リスト
#        string: out に格納される
#

data modify storage string: replace.in set from storage string: in
data modify storage string: out set value []
scoreboard objectives add sk_string_replace_len dummy
scoreboard objectives add sk_string_replace_max dummy
scoreboard players set #Alice sk_string_replace_len 0
scoreboard players set #Alice sk_string_replace_max 0
execute unless data storage string: replace.in[0] run data modify storage string: replace.in set value [[],[],[]]
execute unless data storage string: replace.in[1] run data modify storage string: replace.in append value []
execute unless data storage string: replace.in[2] run data modify storage string: replace.in append value []
execute store result score #Alice sk_string_replace_max run data get storage string: replace.in[1]
data modify storage string: replace.q set value []
execute unless score #Alice sk_string_replace_max matches 0 if data storage string: replace.in[0][0] run function string:replace/loop
