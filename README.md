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

