---
title: デザイナー・ノンプログラマーのためのXcode入門。（４）iPadの設定編の場合。
date: 2012-11-22 15:23:38
tags: cocoa-touch, ios-app, objective-c, xcode,
---
今回はiPadの設定となります。<br>
iPhoneとは少し違うところがあります。

<h3>iPad Deployment Info : Supported Interface Orientations</h3>

<img src="http://farm9.staticflickr.com/8341/8190081021_abdb508443.jpg" alt="" />

「Status Bar Visibility」はiPhoneとは違ってスタイルや色の変更は設定できません。<br>
「Supported Interface Orientations」はiPhoneにもありますがデバイスのどの向きをサポートするかの設定です。<br>
気づいてるかもしれませんがiPhoneのアプリが並んでいるホーム画面は「Portrait」しかサポートしてません。<br>
横に向けてもステータスバーの位置が変わらないんです。<br>
でもiPadは向きを変えればちゃんと「Landscape」の向きに対応してるんですね。<br>
常に上にステータスバーがくるように回転します。<br>
ヒューマンインターフェースガイドラインにはiPadのアプリはすべての方向に対応することが望ましいとしていたと思います。<br>
なので特別な理由がなければ全方向に対応したほうが良いと思います。

<h3>iPad Deployment Info : App Icons</h3>

<img src="http://farm9.staticflickr.com/8486/8190080883_1d99ab11c4.jpg" alt="" />

アイコンの設定は大きさ以外は共通しています。

<h3>iPad Deployment Info : Launch Images</h3>

<img src="http://farm9.staticflickr.com/8204/8190080763_c66eb69513.jpg" alt="" />

「Launch Images」はiPhoneが3画像を設定するようになっていましたがiPadは4画像になります。<br>
ここでも常に上にステータスバーがくるようになることからアプリを起動する方向によってサイズが違います。<br>
とてもよく勘違いするポイントです。

<ul>
<li>1024 x 748 pixel（Landscape）</li>
<li>2048 x 1496 pixel（Retina Landscape）</li>
<li>768 x 1004 pixel（Portrait）</li>
<li>1536 x 2008 pixel（Retina Portrait）</li>
</ul>

iPadアプリとしてプロジェクトを作ってもiPhoneの「Launch Images」3画像が作られるんですね。

忘れずに消しましょう。
