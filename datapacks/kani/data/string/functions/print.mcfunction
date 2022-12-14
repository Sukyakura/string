# 分割文字リストの文字列を表示
#
# 引数 : 表示したい分割文字リスト
#        string: in に代入
#        ※[{c:'{"text":"あ"}',u:12354},{c:'{"text":"い"}',u:12356}]のような形のものを代入する
#
# 戻り値 : 結合された文字列
#        string: out に格納される
#        ※"interpret":trueで結合された文字列を表示可能
#

function string:join
tellraw @s {"nbt":"out","storage":"string:","interpret":true}
