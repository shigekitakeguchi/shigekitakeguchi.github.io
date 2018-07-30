---
title: デザイナー・ノンプログラマーのためのXcode入門。（２）設定編
date: 2012-11-14 09:53:08
tags: 
 - cocoa-touch
 - ios-app
 - objective-c
 - xcode
---

今回はXcodeを起動して仕様に沿ったプロジェクト（Project）の作るところまでを説明していきます。

アプリケーションフォルダにXcodeがインストールされていると思います。インストールに成功していたらですね。<br>
起動したらこんな画面が出ます。ま、英語です。右側の枠内は最近使ったプロジェクトのリストが出ます。<br>
左側の上から「新規でXcode projectを作る」「レポジトリに接続する」「Xcodeの使い方を学ぶ」「アップルの開発者ポータルに行く」ですね。<br>
もちろん「新規でXcode projectを作る」を選んでください。

<img src="http://farm9.staticflickr.com/8197/8184420919_d4d99c0962.jpg" alt="">

<img src="http://farm9.staticflickr.com/8343/8184420867_d1f7ef4516.jpg" alt="">

新規でプロジェクトを作ろうとすると必ずこのウィーザード形式で設定を選択しながら進めることになります。

<img src="http://farm9.staticflickr.com/8479/8187153768_0de0c0804a.jpg" alt="">

まずは、新規でプロジェクトを作る時にどんなテンプレートを選ぶのかという画面です。<br>
デザイナーがXibやStorybordを作る目的なら「Single View Application」がいいと思います。<br>
ただし開発者から指定があった場合はそれを選んでくださいね。「Next」を押すと次の設定に移ります。

<img src="http://farm9.staticflickr.com/8479/8186122855_2bd40ae6e5.jpg" alt="">

次はオプション選択の画面です。「Product Name」はアプリの名称になります。<br>
これも指定があればそれを使い、なければわかりやすい名前をつければいいと思います。<br>
たぶんですが半角英数がいいと思います。「Organization Name」はMacのユーザー名がそのまま出てきます。<br>
その後の「Company Identifier」「Bundle Identifier」「Class Prefix」はデザイナーの方は気にしないでスルーしていいと思います。もちろん指定があればそれを使います。

<img src="http://farm9.staticflickr.com/8201/8187142086_55bf08761e.jpg" alt="">

「Devices」の項目は「iPhone」「iPad」「Universal」をひとつだけ選べるようになっています。<br>
UniversalはiPhoneとiPadをひとつのアプリで両方に対応したものを制作する場合に選択します。<br>
プロジェクトを作った後でも変更したりXibファイルを作る時にiPadをターゲットにすることもできますので間違えて選んでも大丈夫です。

<img src="http://farm9.staticflickr.com/8059/8187142036_5bf94ddf5e.jpg" alt="">

「Storyboards」を使って画面を作る場合はチェックしてください。

<img src="http://farm9.staticflickr.com/8483/8187141968_8c4fdb409b.jpg" alt="">

「Automatic Reference Counting」と「Unit Tests」は開発者・プログラマに確認してください。<br>
これも後で変更できたはずです。「Next」を押すと保存場所を選んで保存します。やっとプロジェクトができたということです。

<img src="http://farm9.staticflickr.com/8070/8184458184_a8c2314b3c.jpg" alt="">

はじめて見たひとには何のことかわからない画面がでてきましたね！<br>
日本語化されてないのでメニューバーも英語です。<br>
ここまでくるとプロジェクトは保存されてますのでXcodeを終えても大丈夫です。<br>
今回はここで終わります。次はこの画面の設定を説明します。