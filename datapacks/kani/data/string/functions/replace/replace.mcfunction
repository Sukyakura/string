# 文字列の置き換え

data modify storage string: replace.comp set from storage string: replace.in[2]
data modify storage string: replace.q set value []
scoreboard players set #Alice sk_string_replace_len 0
execute if data storage string: replace.comp[0] run function string:replace/extend
