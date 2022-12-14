# 2つの文字列を比較
#
# 引数 : 比較したい分割文字リスト
#        string: in に代入 [分割文字リスト1, 分割文字リスト2]
#
# 戻り値 : 結合された文字列
#        string: out に格納される
#        ※分割文字リスト1<分割文字リスト2なら-1b、分割文字リスト1=分割文字リスト2なら0b、分割文字リスト1>分割文字リスト2なら1bが格納される
#

scoreboard objectives add sk_string_comp1 dummy
scoreboard objectives add sk_string_comp2 dummy
data modify storage string: compfunc set value [[],[]]
data modify storage string: compfunc set from storage string: in
function string:compare/loop
