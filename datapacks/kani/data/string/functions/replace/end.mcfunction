# 終了処理

data modify storage string: out append from storage string: replace.q[0]
data remove storage string: replace.q[0]
execute if data storage string: replace.q[0] run function string:replace/end
