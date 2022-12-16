# 文字列の切り取り
#
# 引数 : 切り取り元も分割文字リスト
#        string: in に代入 [[分割文字リスト], [開始位置, 文字数]]
#        ※開始位置が負数の場合は後ろからindexを数える
#
# 戻り値 : 切り取られた分割文字リスト
#        string: out に格納される
#

scoreboard objectives add sk_string_mids dummy
scoreboard objectives add sk_string_midn dummy
data modify storage string: mid.error set value 0b
scoreboard players set #Alice sk_string_mids 0
scoreboard players set #Alice sk_string_midn 0
execute store result score #Alice sk_string_mids run data get storage string: in[1][0]
execute store result score #Alice sk_string_midn run data get storage string: in[0]
execute if score #Alice sk_string_mids matches ..-1 run scoreboard players operation #Alice sk_string_mids += #Alice sk_string_midn
execute if score #Alice sk_string_mids matches ..-1 run data modify storage string: mid.error set value 1b
execute if score #Alice sk_string_mids >= #Alice sk_string_midn run data modify storage string: mid.error set value 1b
scoreboard players set #Alice sk_string_midn 0
execute store result score #Alice sk_string_midn run data get storage string: in[1][1]
execute if data storage string: {mid:{error:1b}} run scoreboard players set #Alice sk_string_mids 0
execute if data storage string: {mid:{error:1b}} run scoreboard players set #Alice sk_string_midn 0
data modify storage string: out set value []
data modify storage string: mid.list set from storage string: in[0]
execute if score #Alice sk_string_mids matches 1.. run function string:mid/start
execute if score #Alice sk_string_midn matches 1.. if data storage string: mid.list[0] run function string:mid/dequeue
