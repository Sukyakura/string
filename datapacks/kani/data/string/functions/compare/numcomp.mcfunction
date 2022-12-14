# unicodeの比較

execute store result score #Alice sk_string_comp1 run data get storage string: compfunc[0][0].u
execute store result score #Alice sk_string_comp2 run data get storage string: compfunc[1][0].u
execute if score #Alice sk_string_comp1 < #Alice sk_string_comp2 run data modify storage string: out set value -1b
execute if score #Alice sk_string_comp1 > #Alice sk_string_comp2 run data modify storage string: out set value 1b
execute if score #Alice sk_string_comp1 = #Alice sk_string_comp2 run data remove storage string: compfunc[0][0]
execute if score #Alice sk_string_comp1 = #Alice sk_string_comp2 run data remove storage string: compfunc[1][0]
execute if score #Alice sk_string_comp1 = #Alice sk_string_comp2 run function string:compare/loop
