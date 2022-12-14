# 文字の取り出し

data modify storage string: out append from storage string: mid.list[0]
data remove storage string: mid.list[0]
scoreboard players remove #Alice sk_string_midn 1
execute if score #Alice sk_string_midn matches 1.. if data storage string: mid.list[0] run function string:mid/deque
