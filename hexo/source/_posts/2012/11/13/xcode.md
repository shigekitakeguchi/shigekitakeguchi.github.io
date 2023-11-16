---
title: デザイナー・ノンプログラマーのためのXcode入門。番外編
date: 2012-11-13 09:14:19
tags:
 - cocoa-touch
 - ios-app
 - objective-c
 - xcode
---

どちらかというとXcode入門とは関係ないですがiOSアプリの制作を実務で受託するってなりますと、実際の作業に入る前に確認しておくことがあり、また納品物の漏れがないようにしないといけないです。<br>
あと納品物に対する対価ってのをこれまた漏れなくいただかないとなので今回はそれについてメモ代わりの番外編となります。<br>

まず作業に入るまえに仕様の確認ってのが必要になります。これで齟齬があったりすると最悪な場合は事故、そこまでにならなくても手戻りなんて無駄なことをしないといけなくなります。

<!-- more -->

あとXcodeでプロジェクトファイルを作る上で設定する必要がある項目ともなります。<br>

<h3>対応するOSのバージョン</h3>
<ul>
<li>iOS 4.3以上</li>
<li>iOS 5.0以上</li>
<li>iOS 6.0以上</li>
</ul>
現実的にはiOS 4.3以上かiOS 5.0以上への対応になると思います。<br>
もっと古いOSのバージョンから対応しないといけないっていうアプリもあるかもしれませんが特殊な事例になるんじゃないでしょうか？<br>
かなりコストがかかると見た方がよいと思います。

<h3>対応するデバイス</h3>
<ul>
<li>iPhoneのみ</li>
<li>iPadのみ</li>
<li>iPhoneとiPad</li>
</ul>
あとになってiPadも対応して欲しいなんてなると悲惨です。<br>
どこまで対応するかってのもありますがよくよく話を聞くとiPadは別のXibを用意しないといけないなんてことになったりします。
<ul>
<li>iPhone 3G（320 x 480）</li>
<li>iPhone 3GS（320 x 480）</li>
<li>iPhone 4（640 x 960 : Retina）</li>
<li>iPhone 4S（640 x 960 : Retina）</li>
<li>iPhone 5（640 x 1136 : Retina）</li>
</ul>
現実的にはiPhone 3GSからでの対応になると思います。
<ul>
<li>iPad 1st Generation（768 x 1024）</li>
<li>iPad 2nd Generation（768 x 1024）</li>
<li>iPad 3rd Generation（1526 x 2048 : Retina）</li>
<li>iPad 4th Generation（1526 x 2048 : Retina）</li>
<li>iPad mini（768 x 1024）</li>
</ul>
理想としてはiPad 2ndからでの対応ってなると嬉しいですがこちらは1stからの対応を希望されるかもしれませんね。

<h3>iPhoneのLaunch imageとよばれるアプリ起動時に表示される画像</h3>
<ul>
<li>320 x 480 pixel</li>
<li>640 x 960 pixel（Retina）</li>
<li>640 x 1136 pixel（Retina 4 inch）</li>
</ul>
iPhone 5が出てから用意するイメージが増えましたね。

<h3>iPadのLaunch imageとよばれるアプリ起動時に表示される画像</h3>
<ul>
<li>1024 x 748 pixel（Landscape）</li>
<li>2048 x 1496 pixel（Retina Landscape）</li>
<li>768 x 1004 pixel（Portrait）</li>
<li>1536 x 2008 pixel（Retina Portrait）</li>
</ul>
これサイズをいつも確認するんですが電池残量などが表示されているステータスバーってのがiPadは縦持ち（Portrait）と横持ち（Landscape）でちゃんと位置というか方向が変わるようになってるんですよね。なのでサイズに注意しないといけないんですよね。

<h3>アプリで使用するiPhoneのアイコン画像</h3>
<ul>
<li>57 x 57 pixel</li>
<li>114 x 114 pixel（Retina）</li>
</ul>
※ちなみに設定の中や検索で表示されるアイコンは含まれてません。

<h3>アプリで使用するiPadのアイコン画像</h3>
<ul>
<li>72 x 72 pixel</li>
<li>144 x 144 pixel（Retina）</li>
</ul>
※ちなみに設定の中や検索で表示されるアイコンは含まれてません。

<h3>App Storeでの使われるアイコン画像</h3>
<ul>
<li>1024 x 1024 pixel</li>
</ul>
もうこのサイズはアイコンとは呼べないですよね。<br>
サイズの変更ってのはめったにないことだとは思いますが大きいのを用意しないといけなくなった時のためにベクターで用意してます。

<h3>iPhoneのスクリーンショット（最大5イメージまで）</h3>
<ul>
<li>640 x 960 pixel</li>
<li>640 x 1136 pixel（4 inch）</li>
</ul>
これも3.5 inch用のとiPhone 5（4 inch）のと両方を用意する必要があります。<br>
サイズは縦長でも横長でも登録できます。<br>
あとガイドラインとアップロード画面のヘルプではサイズの指定がもう少し違うものでも用意できたと思います。

<h3>iPadのスクリーンショット（最大5イメージまで）</h3>
<ul>
<li>2048 x 1536 pixel</li>
</ul>
これはひとつのサイズで大丈夫です。また、サイズは縦長でも横長でも登録できます。

アプリをアップルの審査に出すとき必要な画像の用意を忘れていて焦ります。<br>
これだけの準備をデザイナーがしないといけないので管理だけでも大変です。<br>
iPhoneのみ、iPadのみの場合はいいですがiPhoneとiPadをひとつのアプリで対応するUniversal対応ってなるとかなりの数になります。<br>
なのでチェックリストとか用意しておいたほうがよさそうですね。