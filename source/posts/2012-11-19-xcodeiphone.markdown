---
title: デザイナー・ノンプログラマーのためのXcode入門。（３）iPhoneの設定編の続き。
date: 2012-11-19 05:51:14
tags: cocoa-touch, ios-app, objective-c, xcode,
---

プロジェクトを作って出てくる最初の画面の説明です。<br>
基本的な設定はここで行います。もう一度設定したいなというときにはTARGETSの「Summary」タブを選べばこの画面にきます。<br>
思ったよりも長くなってしまったので今回はiPhoneの設定のみです。

<h3>iOS Application Target</h3>

<img src="http://farm9.staticflickr.com/8482/8191165170_1d7d049587.jpg" alt="" />

「Bundle Identifier」「Version」「Build」は指定があればそれを入力するってのでいいと思います。<br>
「Devices」はここで変更できます。「iPhone」を選ぶと「iPhone / iPod Deployment Info」という設定項目が表示され、<br>
「iPad」を選ぶと「iPad Deployment Info」が表示され、「Universal」を選ぶと両方が表示されます。

<h3>iPhone / iPod Deployment Info : Supported Interface Orientations</h3>

<img src="http://farm9.staticflickr.com/8210/8191165082_be059727bf.jpg" alt="" />

iPhone向けのアプリの基本設定ができます。<br>
「Main Storybord」はプロジェクトファイルを作るプロセスで「Use Storybords」にチェックを入れると自動でその時作られたStorybordファイルが対象として入力されます。<br>
「Main Interface」は今のXcodeでは自動では対象が入力されませんね。<br>
以前は「MainWindow.xib」というのがあってそれが選ばれていたと思いますが、現状のXcodeでは使わなくっています。<br>
「Supported Interface Orientations」は制作するアプリをどの向きで使えるようにするかの設定です。特に指定や仕様上の理由がない場合は「Portrait」のみでいいと思います。<br>
この設定とは関係なくLandscape用のXibは作れます。

<h3>iPhone / iPod Deployment Info : Status Bar + App Icons</h3>

<img src="http://farm9.staticflickr.com/8342/8190081165_1159e14384.jpg" alt="" />

iPhoneの画面の一番上にある「Status Bar」の設定をします。<br>
「Style」は「Default」と「Black Translucent」「Black Opaque」です。<br>
「Default」はiOS 6からはアプリ内の「Navigation Bar」の色によって「Status Bar」の色が変わるようになりましたので気をつけてくださいね。<br>
iOS 5までは薄めのグレーで少し立体感のあるものだったのが変わりました。あとは黒の不透明と透明に設定できます。<br>
「Visiuility」は「Status Bar」を非表示にする時にチェックします。「Tinting」はより細かく設定できます。<br>
こちらもiOS 6では起動時は設定色になりますが「Navigation Bar」の色になるようですね。<br>
「Aoo Icons」はアプリのアイコンをここからドラッグ&ドロップで登録できます。あと別の方法で登録したものも反映されます。<br>
「Prerendered」は自動でつくひかってる感じを消す時にチェックします。

<h3>iPhone / iPod Deployment Info : Launch Images</h3>

<img src="http://farm9.staticflickr.com/8066/8190081089_4d4bac9b2b.jpg" alt="" />

最後に「Launch Images」の設定となります。<br>
iPhone 5の4インチ画面が登場したことで3つ用意しないといけなくなりました。こちらもアイコンと同じくドラッグ&ドロップで登録できます。<br>
ただし気をつけないといけないのはプロジェクトを作った時に自動で画像が登録されています。不要なら忘れずに消しましょう。

次はiPadの設定となります。
