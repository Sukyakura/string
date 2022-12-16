#一致場所を探す

data modify storage string: find.qc set from storage string: find.q
execute store success storage string: find.s byte 1 run data modify storage string: find.qc set from storage string: find.in[1]
execute if data storage string: {find:{s:0b}} run data modify storage string: out append value -1
execute if data storage string: {find:{s:0b}} store result storage string: out[-1] int 1 run scoreboard players get #Alice sk_string_find_idx
scoreboard players add #Alice sk_string_find_idx 1
execute unless score #Alice sk_string_find_max = #Alice sk_string_find_idx run data remove storage string: find.q[0]
execute unless score #Alice sk_string_find_max = #Alice sk_string_find_idx run data modify storage string: find.q append from storage string: find.in[0][0]
execute unless score #Alice sk_string_find_max = #Alice sk_string_find_idx run data remove storage string: find.in[0][0]
execute unless score #Alice sk_string_find_max = #Alice sk_string_find_idx run function string:find/search
