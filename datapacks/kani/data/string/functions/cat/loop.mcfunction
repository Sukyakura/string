# 1文字ずつをoutにappend

data modify storage string: out append from storage string: cat[0][0]
data remove storage string: cat[0][0]
execute unless data storage string: cat[0][0] run data remove storage string: cat[0]
execute if data storage string: cat[0] run function string:cat/loop
