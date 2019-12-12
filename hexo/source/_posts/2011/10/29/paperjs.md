---
title: Paper.jsを触ってみた。
date: 2011-10-29 18:11:00
tags: 
 - htmlcss
 - javascript
---

HTML5のCanvasってそのままじゃあ、どうも扱いにくいというか学ぶ時の最初のハードルが高いという印象があった。<br>
その中でもちょっといい感じだと思ったベクターグラフィックを扱いやすくするフレームワーク<a title="Paper.js" href="https://paperjs.org/" target="_blank">Paper.js</a>を触ってみた。<br>
おそらく他のフレームワークもそうだろうけどFlashのActionScriptを触ったことあるってひとだと馴染みやすい。<br>
自分のサイトの背景で動くものからはじめてみたのが<a title="*{ zoom:1; }" href="https://zoomone.net" target="_blank">これ</a>。

<!-- more -->

まずはHTMLの記述から。<br>
canvasにid属性とその値を設定する。この場合は「myCanvas」とした。少し注意しないといけないのがscript要素のtype属性値の記述。JavaScriptの場合、HTML5ではtype属性そもそも記述しなくてもいいし、記述する場合も「text/javascript」とするがPaper.jsでは値を「text/paperscript」とする（最初書き忘れてたら何も表示されなかった。。。）。リファレンス読むと「text/javascript」という属性値でもやる方法があるけど今回は省略。で、もうひとつは描画するためのcanvasのid属性値をcanvasという属性の値に記述すること（これも違う方法が用意されている）。ちょっとやり方がいろいろあるみたいなので統一して欲しい気もする。<br />
これで準備は終わり。

```html
<!DOCTYPE html>
<html>
<head>
<!--Paper.jsの読み込み-->
<script type="text/javascript" src="js/paper.js"></script>
<!--Paper.jsへのコードを以下に記述する-->
<script type="text/paperscript" canvas="myCanvas">
</script>
<canvas id="myCanvas"></canvas>
```

```html
<script type="text/javascript" src="/common/js/paper.js"></script>
<script type="text/paperscript" canvas="myCanvas">
var myView = new View("myCanvas");
myView.viewSize = new Size(500, 300);
var myCircle = new Path.Circle(myView.center, 50);
myCircle.fillColor = '#000000';
</script>
<canvas id="myCanvas" style="background: #eee;" class="mt15p"></canvas>
```
<p class="mt15p">上の黒い丸を描画しているのが以下のスクリプトを実行した結果。

```javascript
var myView = new View("myCanvas");
myView.viewSize = new Size(500, 300);
var myCircle = new Path.Circle(myView.center, 50);
myCircle.fillColor = '#000000';
```
ちょっと解説すると以下はcanvas要素の大きさを設定している。canvasってCSSで幅と高さを指定すると単純に拡大されたり縮小されたりして変な描画になってしまうの？style属性でwidthとheightでPixel指定したら駄目なのかな？なのでwidth、height属性で指定か以下のような指定をする。

```javascript
var myView = new View("myCanvas");
myView.viewSize = new Size(500, 300);
```

以下が黒い丸を描画しているところ。myView.centerってのはcanvasの上下、左右の中心width/2とheight/2の座標がはいる。この場合は250と150となる。座標を直接記述する場合はnew Point(250, 150)ってなる。new Path.Circleって記述で描画される。第2引数の50は半径。myCircle.fillColorは塗りつぶしの色指定となる。この場合は「#000000」で黒で塗りつぶしている。'black'って感じで色名でもよい。


```javascript
var myCircle = new Path.Circle(myView.center, 50);
myCircle.fillColor = '#000000';
```
これでベクターベースの形を描画できるようになる。<br />
ちょっと面白くなってきたのでアニメーションのこと、レイヤーのことなども書いていこうと思う。<br />
次は簡単なアニメーションのやり方かな？
