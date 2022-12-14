# 文字を結合していく

data modify block 0 -64 0 Text1 set value '{"nbt":"join.text[0][0]","storage":"string:","interpret":true,"extra":[{"nbt":"join.text[1][0].c","storage":"string:","interpret":true}]}'
data modify storage string: join.text[0][0] set from block 0 -64 0 Text1
data remove storage string: join.text[1][0]
execute if data storage string: join.text[1][0] run function string:join/text
