# キューであふれた文字を取り出す

data modify storage string: out append from storage string: replace.q[0]
data remove storage string: replace.q[0]
scoreboard players remove #Alice sk_string_replace_len 1
