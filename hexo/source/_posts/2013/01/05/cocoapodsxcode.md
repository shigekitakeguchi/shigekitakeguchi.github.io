---
title: CocoaPodsを使ったXcodeプロジェクトの作り方（４）
date: 2013-01-05
tags: about-programing, cocoa-touch, ios-app, objective-c, xcode,
---

４回目ですね。ビルド実行してコンパイルして確認します。<br>
これで設定は終了。<br>
これを終えると正しくコンパイルができるようになります。<br>
これをやっておくと全くいつもどおりにライブラリ、フレームワークを使用することができます。

<img src="http://farm9.staticflickr.com/8358/8348613347_3ca6e86d70.jpg" alt="" />

ツールバー内にある「Scheme」の設定をします。

<img src="http://farm9.staticflickr.com/8325/8348613229_9e38840894.jpg" alt="" />

クリックすると「Pods」を選択できます。続けて「iOS Device」も選択します。

<img src="http://farm9.staticflickr.com/8235/8349673530_a23d43e12d.jpg" alt="" />

メニューバーの「Product」から「Build」を選択します。するとPodsプロジェクトがビルドされます。

<img src="http://farm9.staticflickr.com/8506/8348612959_a2c1301afb.jpg" alt="" />

ビルドが成功すると「Build Successed」と表示され「Frameworks」内に赤字で表示されていた「libPods.a」が黒字で表示されます。
これで静的ライブラリである「libPods.a」を使用することができるようになりました。
