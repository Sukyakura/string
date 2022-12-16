# outに文字をappendしていく

data modify storage string: out append from storage string: replace.comp[0]
data remove storage string: replace.comp[0]
execute if data storage string: replace.comp[0] run function string:replace/extend
