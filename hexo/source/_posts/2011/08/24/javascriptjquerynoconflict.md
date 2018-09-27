---
title: JavaScript：即時関数を意識して使ってみた（jQuery.noConflict()の場合）。
date: 2011-08-24 14:00:40
tags: 
 - javascript
 - jquery
---

たまには技術的な話題を。

この即時関数についての投稿がわかりやすかった。<br>
しかも、すごく詳細に書かれていて長いんだけどわかりやすいです。<br>
なかなかここまでちゃんと書こうと思ってもかけるもんじゃないですね。

<!-- more -->

<a href="http://d.hatena.ne.jp/sandai/20110824/p1" title="知ってて当然？初級者のためのJavaScriptで使う即時関数(function(){...})()の全て - 三等兵" target="_blank">知ってて当然？初級者のためのJavaScriptで使う即時関数(function(){...})()の全て - 三等兵</a>

そういえば、これの呼び名って何て言うんだろうってずっと思ってた。<br>
即時関数って呼べばいいってことか。今ひとつしっくりこない気もするけど。。。<br>
JavaScriptのグローバル変数問題ってのをスマートに解決しようっていう意図なんだろうなと思ってたけどここまでちゃんと解説してくれるとありがたい。

```javascript
jQuery.noConflict();
(function($){
	$(function() {
		var val = $('h1').text();
		alert(val);
	});
})(jQuery);
```

これはjQueryの競合（コンフリクト）を解決するための初期化というか初動のコード。h1の値であるテキスト情報をとってくるコードなんだけど確かにわかりくいっていう難点はある。<br>
でもこういう自由さがJavaScriptの面白いところ。あと奥が深いところでもある。<br>

```javascript
$.noConflict();
jQuery(document).ready(function($) {
	var val = $('h1').text();
	alert(val);
});
```

こっちのほうがわかりやすいかな？
