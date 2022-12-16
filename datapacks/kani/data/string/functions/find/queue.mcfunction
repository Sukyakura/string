#キューを生成

data modify storage string: find.q append from storage string: find.in[0][0]
data remove storage string: find.in[0][0]
scoreboard players add #Alice sk_string_find_idx 1
execute unless score #Alice sk_string_find_len = #Alice sk_string_find_idx run function string:find/queue
