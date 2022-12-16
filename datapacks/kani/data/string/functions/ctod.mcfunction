# 1文字を{u:xxxx,c:...}に変換する
#
# 引数 : 変換したい文字
#        string: in に代入 ["あ"] あるいは '{"text":"あ"}' の形にする
#
# 戻り値 : 1文字+unicodeのcompound
#        string: out に格納される
#

execute in string:void run function string:ctod/loot
