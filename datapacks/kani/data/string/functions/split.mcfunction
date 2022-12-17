# 文字列分割
#
# 引数 : 分割したい文字列
#        string: in に代入
#        ※"interpret":trueとして処理されるため通常の文字列は[]で囲う必要がある
#        ※'{"text":"\u0000\u0001\u0002"}'のような文字列を代入した場合、\u0000・\u0001・\u0002に分割される
# 戻り値 : 分割された文字列リスト
#        string: out に格納される
#        ※[{c:'{"text":"あ"}',u:12354},{c:'{"text":"い"}',u:12356}]のように格納され、cが分割された1文字、uがunicodeの10進数表記となる
#

execute in string:void run forceload add 0 0
scoreboard objectives add sk_string_split_i dummy
scoreboard objectives add sk_string_split_u dummy
execute unless score #Alice sk_string_split_i = #Alice sk_string_split_i run scoreboard players set #Alice sk_string_split_i 0
execute if data storage string: {exec:1b} run tellraw @s {"text":"現在文字列分割は実行中です","color":"red"}
execute unless data storage string: {exec:1b} run data modify storage string: out set value []
execute unless data storage string: {exec:1b} unless data storage string: {in:""} in string:void run setblock 0 -63 1 minecraft:redstone_block
execute unless data storage string: {exec:1b} unless data storage string: {in:""} run data modify storage string: exec set value 1b
