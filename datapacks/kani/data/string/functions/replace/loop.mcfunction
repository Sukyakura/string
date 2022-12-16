# 文字列置換ループ

data modify storage string: replace.q append from storage string: replace.in[0][0]
data remove storage string: replace.in[0][0]
scoreboard players add #Alice sk_string_replace_len 1
execute if score #Alice sk_string_replace_len > #Alice sk_string_replace_max run function string:replace/dequeue
execute if score #Alice sk_string_replace_len = #Alice sk_string_replace_max run function string:replace/check
execute unless data storage string: replace.in[0][0] if data storage string: replace.q[0] run function string:replace/end
execute if data storage string: replace.in[0][0] run function string:replace/loop
