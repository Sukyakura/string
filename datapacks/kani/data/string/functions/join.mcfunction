# 分割文字リストから文字列に戻す
#
# 引数 : 連結したい分割文字リスト
#        string: in に代入
#        ※[{c:'{"text":"あ"}',u:12354},{c:'{"text":"い"}',u:12356}]のような形のものを代入する
#
# 戻り値 : 連結された文字列
#        string: out に格納される
#        ※"interpret":trueで結合された文字列を表示可能
#

execute in string:void run forceload add 0 0
data modify storage string: join.text set value [['{"text":""}'],[]]
data modify storage string: join.text[1] set from storage string: in
execute if data storage string: join.text[1][0] run function string:join/text
data modify storage string: out set from storage string: join.text[0][0]
