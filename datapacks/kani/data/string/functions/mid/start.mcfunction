# 開始位置まで削除

data remove storage string: mid.list[0]
scoreboard players remove #Alice sk_string_mids 1
execute if score #Alice sk_string_mids matches 1.. run function string:mid/start
