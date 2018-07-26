---
title: Command Line ToolでObjective-Cのお勉強。
date: 2011-10-11 02:11:36
tags: objective-c,
---

いつもプロジェクトの作り方を忘れるので自分用にメモ。<br>
もっと良い書き方をマスターしたいってことでObjective-Cの構文を勉強し直してる。<br>

そういうときにプログラム書いてターミナルでコンパイルってのも面倒と言えば面倒。<br>
でiOSのApplicationプロジェクトを作るのはもっと面倒。<br>
そんな時にはCommand Line Toolでプロジェクト作るのがいい。<br>
Xcodeのコンソールで結果を出力しつつXcodeのエディタで補完してもらいながらプログラム書ける。<br>
あと、思いついたことを小さく試すのにもいいと思う。でも、これなぜかしばらくやってないと忘れてしまう。<br>
これはXcode 4.xでやってます。

新規プロジェクト作成。

<a href="http://www.flickr.com/photos/shigeki_takeguchi/6229400083/" title="New Project by shigeki.takeguchi, on Flickr"><img src="http://farm7.static.flickr.com/6050/6229400083_633a5c7704.jpg" width="500" height="313" alt="New Project"></a>

プロジェクトのテンプレートを選ぶ画面でMac OSX Applicationの「Command Line Tool」を選び「Next」を押す。

<a href="http://www.flickr.com/photos/shigeki_takeguchi/6229918332/" title="Command line tool by shigeki.takeguchi, on Flickr"><img src="http://farm7.static.flickr.com/6231/6229918332_ecb2867e58.jpg" width="500" height="313" alt="Command line tool"></a>

そうするとプロジェクトの名前入力してタイプを選ぶ画面にいく。タイプは「Foundation」を選ぶ。そうすると「Foundation」というフレームワークを利用できるようになる。

<a href="http://www.flickr.com/photos/shigeki_takeguchi/6229918380/" title="Foundation by shigeki.takeguchi, on Flickr"><img src="http://farm7.static.flickr.com/6232/6229918380_0aaf889e6c.jpg" width="500" height="313" alt="Foundation"></a>

プロジェクトの名前を入力。

<a href="http://www.flickr.com/photos/shigeki_takeguchi/6229400323/" title="Name by shigeki.takeguchi, on Flickr"><img src="http://farm7.static.flickr.com/6234/6229400323_1958d6ec47.jpg" width="500" height="313" alt="Name"></a>

任意の場所に保存。ローカルのgit使うってひとは下のチェックボックスにチェック。使わない場合はそのまま。

<a href="http://www.flickr.com/photos/shigeki_takeguchi/6229918484/" title="Save by shigeki.takeguchi, on Flickr"><img src="http://farm7.static.flickr.com/6230/6229918484_4796db22ed.jpg" width="500" height="313" alt="Save"></a>

これは作成後の画面。ファイルの構成はシンプル。

<a href="http://www.flickr.com/photos/shigeki_takeguchi/6229400419/" title="Open by shigeki.takeguchi, on Flickr"><img src="http://farm7.static.flickr.com/6222/6229400419_f8b43c1153.jpg" width="500" height="313" alt="Open"></a>

main.mというファイルが作られるんだけどその中身。NSLogで「Hello, World!」ってコンソールに出力するだけ。

<a href="http://www.flickr.com/photos/shigeki_takeguchi/6229400463/" title="main.m by shigeki.takeguchi, on Flickr"><img src="http://farm7.static.flickr.com/6101/6229400463_4b4a5e27cf.jpg" width="500" height="313" alt="main.m"></a>

左上の「再生」のような「Run」というボタンをクリックすると実行されてコンソールに「Hello, World!」と表示される。でiOS開発とかと違って「Stop」を押さなくても自然に止まる。

<a href="http://www.flickr.com/photos/shigeki_takeguchi/6229400527/" title="Run by shigeki.takeguchi, on Flickr"><img src="http://farm7.static.flickr.com/6222/6229400527_19fa65915a.jpg" width="500" height="313" alt="Run"></a>

こんな感じでプロジェクトを作ってObjective-Cを学べ。
