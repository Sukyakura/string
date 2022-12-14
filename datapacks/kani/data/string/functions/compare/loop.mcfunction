# 一つずつ比較していくループ

execute unless data storage string: compfunc[0][0] if data storage string: compfunc[1][0] run data modify storage string: out set value -1b
execute unless data storage string: compfunc[0][0] unless data storage string: compfunc[1][0] run data modify storage string: out set value 0b
execute if data storage string: compfunc[0][0] unless data storage string: compfunc[1][0] run data modify storage string: out set value 1b
execute if data storage string: compfunc[0][0] if data storage string: compfunc[1][0] run function string:compare/numcomp
