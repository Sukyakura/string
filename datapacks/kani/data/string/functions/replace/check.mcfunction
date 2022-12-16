# 変換元と一致しているか判定

data modify storage string: replace.comp set from storage string: replace.q
execute store success storage string: replace.s byte 1 run data modify storage string: replace.comp set from storage string: replace.in[1]
execute if data storage string: {replace:{s:0b}} run function string:replace/replace
