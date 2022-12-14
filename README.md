# 文字列操作データパック

## 使い方

### 文字列分割

文字列操作するためにはこれを実行しないといけません<br>
その他文字列操作はこれにより生成した分割文字リストを使用します<br>
<br>
まず分割したい文字列を`storage string: in`に入れます<br>
 ```
/data modify storage string: in set value ["あいうえお"]
 ```
以下のように記述することも可能です<br>
 ```
/data modify storage string: in set value '{"text":"\\u821e\\u5009"}'
 ```
※`{"nbt":"in","storage":"string:","interpret":true}`での表示結果が反映されます<br>
<br>
次に以下のコマンドを実行します
このコマンドの実行には数tickの時間がかかります
 ```
/function string:split
 ```
※実行完了後`storage string: count`の値がインクリメントされるためその値を見て実行完了を判別できます<br>
※実行中は`storage string: exec`の値が`1b`，実行中でない場合は`storage string: exec`の値が`0b`となっています<br>
<br>
実行完了後は`storage string: out`に分割文字リストが格納されます<br>
リストは以下の例のようになります<br>
`u`には10進数表記のunicode，`c`にはJSON形式の文字列が格納されます
 ```
[
  {u: 12354, c: '{"text":"あ"}'},
  {u: 12356, c: '{"text":"い"}'},
  {u: 12358, c: '{"text":"う"}'},
  {u: 12360, c: '{"text":"え"}'},
  {u: 12362, c: '{"text":"お"}'}
]
 ```

### 文字列結合

文字列分割により生成した分割文字リストを連結させて表示可能な文字列に変換します<br>
<br>
まず連結したい分割文字リストを`storage string: in`に入れます<br>
 ```
/data modify storage string: in set value [{u:12354,c:'{"text":"あ"}'},{u:12356,c:'{"text":"い"}'},{u:12358,c:'{"text":"う"}'},{u:12360,c:'{"text":"え"}'},{u:12362,c:'{"text":"お"}'}]
 ```
 <br>
次に以下のコマンドを実行します

 ```
/function string:join
 ```
 
<br>
実行完了後は`storage string: out`に連結した文字列が格納されます<br>
連結した文字列は以下の例のようになります<br>

 ```
'{"extra":[{"text":"あ"},{"text":"い"},{"text":"う"},{"text":"え"},{"text":"お"}],"text":""}'
 ```
 
※`"interpret":true`にすると正しく表示されます

### 文字列表示

上記文字列結合機能に文字列表示機能を追加しただけのもので，使い方はほぼ同じ<br>
分割文字リストから文字列を直接表示させたいときに使用する<br>
<br>
まず表示したい分割文字リストを`storage string: in`に入れます<br>
 ```
/data modify storage string: in set value [{u:12354,c:'{"text":"あ"}'},{u:12356,c:'{"text":"い"}'},{u:12358,c:'{"text":"う"}'},{u:12360,c:'{"text":"え"}'},{u:12362,c:'{"text":"お"}'}]
 ```
 <br>
次に以下のコマンドを実行します

 ```
/function string:print
 ```
 
<br>
実行完了後は実行者に対して連結した文字列が表示され，`storage string: out`に連結した文字列が格納されます<br>
連結した文字列は以下の例のようになります<br>

 ```
'{"extra":[{"text":"あ"},{"text":"い"},{"text":"う"},{"text":"え"},{"text":"お"}],"text":""}'
 ```
 
※`"interpret":true`にすると正しく表示されます

### 文字列比較

2つ文字列のunicodeの数値を比較し，大小を出力します<br>
<br>
まず比較したい分割文字リストを2つ入れたリストを`storage string: in`に入れます<br>

 ```
/data modify storage string: in set value []
/data modify storage string: in append value [{u:12354,c:'{"text":"あ"}'},{u:12356,c:'{"text":"い"}'},{u:12358,c:'{"text":"う"}'},{u:12360,c:'{"text":"え"}'},{u:12362,c:'{"text":"お"}'}]
/data modify storage string: in append value [{u:12363,c:'{"text":"か"}'},{u:12365,c:'{"text":"き"}'},{u:12367,c:'{"text":"く"}'},{u:12369,c:'{"text":"け"}'},{u:12371,c:'{"text":"こ"}'}]
 ```
 
 次に以下のコマンドを実行します

 ```
/function string:compare
 ```
 
 実行完了後は`storage string: out`に比較結果が格納されます<br>
 `storage string: in[0] < storage string: in[1]`ならば`-1b`<br>
 `storage string: in[0] = storage string: in[1]`ならば`0b`<br>
 `storage string: in[0] > storage string: in[1]`ならば`1b`<br>
 が格納されます
 
 ### 文字列切取
 
 分割文字リストの`m`番目インデックスから先`n`文字分取り出します<br>
<br>
まず切り取り元の分割文字リストを`storage string: in[0]`に，`m`を`storage string: in[1][0]`に，`n`を`storage string: in[1][1]`に入れます<br>
※`m`の値を負数にした場合は，リストの後ろ側から`-m`番目(-1が一番後ろ)が参照されます<br>

 ```
/data modify storage string: in set value []
/data modify storage string: in append value [{u:12354,c:'{"text":"あ"}'},{u:12356,c:'{"text":"い"}'},{u:12358,c:'{"text":"う"}'},{u:12360,c:'{"text":"え"}'},{u:12362,c:'{"text":"お"}'}]
/data modify storage string: in append value []
/data modify storage string: in[1] append value 1
/data modify storage string: in[1] append value 2
 ```
 
次に以下のコマンドを実行します

 ```
/function string:mid
 ```
 
実行完了後は`storage string: out`に切り取り後の分割文字リストが格納されます<br>
上記の例の場合は以下のようになります

 ```
[
  {u: 12356, c: '{"text":"い"}'},
  {u: 12358, c: '{"text":"う"}'}
]
 ```
 
### unicodeから文字に変換

int型の10進数unicodeから`{u: xxxx, c: '{"text":"X"}'}`の形に変換します<br>
<br>
まず変換したい10進数unicodeを`storage string: in`に入れます<br>

 ```
/data modify storage string: in set value 33609
 ```
 
 次に以下のコマンドを実行します

 ```
/function string:utoc
 ```
 
 実行完了後は変換結果が`storage string: out`に`{u: xxxx, c: '{"text":"X"}'}`の形式で格納されます<br>
 上記の例の場合は以下のようになります
 
 ```
  {u: 33609, c: '{"text":"草"}'}
 ```
