# 文字列の結合
#
# 引数 : 結合したい分割文字リストのリスト
#        string: in に代入 [分割文字リスト1, 分割文字リスト2, 分割文字リスト3,...]
#
# 戻り値 : 結合された分割文字リスト
#        string: out に格納される
#

data modify storage string: out set value []
data modify storage string: cat set from storage string: in
data modify storage string: out set from storage string: cat[0]
data remove storage string: cat[0]
execute if data storage string: cat[0] run function string:cat/loop
