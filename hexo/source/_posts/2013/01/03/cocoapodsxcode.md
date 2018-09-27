---
title: CocoaPodsを使ったXcodeプロジェクトの作り方（２）
date: 2013-01-03 00:35:14
tags: 
 - cocoa-touch
 - ios-app
 - objective-c
 - xcode
---

２回目ですね。前回からの続きです。<br>
「pod install」を実行しますとTerminalで以下のように表示されます。<br>
それぞれ記述したライブラリをダウンロードしてくれます。<br>
これがなかったときはひとつひとつ検索してダウンロードしてました。

<!-- more -->

```shell
Resolving dependencies of `./Podfile'
Updating spec repositories
Resolving dependencies for target `default' (iOS 5.0)
Downloading dependencies
Installing AFNetworking (1.1.0)
Installing JSONKit (1.5pre)
Installing Nimbus (1.0.0)
Generating support files

[!] From now on use `Lab046.xcworkspace'.
Integrating `libPods.a' into target `Lab046' of Xcode project `./Lab046.xcodeproj'.
```

特に便利なのが依存するライブラリをインストールしてくれるところです。<br>
「NimbusKit」では「AFNetworking」と「JSONKit」が依存するライブラリとなります。

<img src="http://farm9.staticflickr.com/8221/8340313796_1f3f27c6c9.jpg" alt="" />

同時にプロジェクトフォルダ内も「Build」フォルダ。<br>
拡張子「.xcworkspace」というファイル。<br>
「Podfile.lock」というファイル。<br>
「Pods」というフォルダ。<br>
が作成されました。

<img src="http://farm9.staticflickr.com/8362/8340354408_5fd69c9090.jpg" alt="" />

「Pods」フォルダ内は依存ライブラリも含めてこんな風になってます。

拡張子「.xcodeproj」のプロジェクトファイルを開いていたと思いますがここでいったん閉じて、<br>
拡張子「.xcworkspace」のファイルを開きます。

<img src="http://farm9.staticflickr.com/8215/8339325517_2ea285ed09_o.png" alt="" />

起動すると、こんな感じでふたつのプロジェクトを含んだものになります。

今日はここまでです。
