---
title: CocoaPodsを使ったXcodeプロジェクトの作り方（１）
date: 2012-12-26 05:10:04
tags: 
 - cocoa-touch
 - ios-app
 - objective-c
 - xcode
---

ライブラリをあまり使わない方だと思いますがそれでもOSとライブラリ双方のアップデートをまめに管理したり、あと異なる環境で共有したりするのが難しいなと思っていました。<br>
そんな煩雑になってしまいがちなライブラリ管理を便利にやってくれるのがCocoaPodsです。<br>
もうこれがないと面倒だと感じるくらいになってきました。<br>
手順も数回やれば覚えるほどですが忘れたときのためにメモです。<br>
複数回に分けて紹介していくつもりです。<br>
インストールはGithubの<br>
<a href="https://github.com/CocoaPods/CocoaPods">CocoaPods/CocoaPods</a>のページなどを参考にしてください。

ちまたで話題のiOSフレームワーク「<a href="http://nimbuskit.info/">NimbusKit</a>」を利用するプロジェクトを作っていきます。<br>
まずはNimbusフレームワークがあるかどうかを調べます。対応しているとどんなバージョンがあるのかなどがわかります。<br>
Terminalを起動して以下のように入力して最後にenter（return）ですね。

```shell
$ pod search 'Nimbus'
```

以下が検索結果です。

```shell
-> Nimbus (1.0.0)
   An iOS framework whose growth is bounded by O(documentation).
   - Homepage: http://docs.nimbuskit.info/index.html
   - Source:   https://github.com/jverkoey/nimbus.git
   - Versions: 1.0.0, 0.9.3, 0.9.2, 0.9.1, 0.9.0 [master repo]
   - Sub specs:
         - Nimbus/Core (1.0.0)
         - Nimbus/Badge (1.0.0)
         - Nimbus/CSS (1.0.0)
         - Nimbus/AttributedLabel (1.0.0)
         - Nimbus/Interapp (1.0.0)
         - Nimbus/Launcher (1.0.0)
         - Nimbus/Models (1.0.0)
         - Nimbus/NetworkControllers (1.0.0)
         - Nimbus/NetworkImage (1.0.0)
         - Nimbus/Overview (1.0.0)
         - Nimbus/PagingScrollView (1.0.0)
         - Nimbus/Photos (1.0.0)
         - Nimbus/Operations (1.0.0)
         - Nimbus/Operations/JSON (1.0.0)
         - Nimbus/WebController (1.0.0)
```

<img src="http://farm9.staticflickr.com/8362/8309747906_4ba577f9ec.jpg" alt="" />

次にXcodeで新規でプロジェクトを作っていきます。わかりやすいように「Empty Application」を選びました。

<img src="http://farm9.staticflickr.com/8216/8309747774_54fa5d6785.jpg" alt="" />

今回はProduct Nameに「Lab046」とつけました。名前は何でもいいです。
「Devices」はiPhoneで「Use Automatic Reference Counting」にチェックを入れました。

<img src="http://farm9.staticflickr.com/8074/8309747668_3774bfd858.jpg" alt="" />

「Development Target」は5.0を選択しました。

<img src="http://farm9.staticflickr.com/8219/8339257247_36afcb6cfb.jpg" alt="" />

Projectを作ったらProjectフォルダに移動して「.xcodeproj」と同じ階層に「Podfile」というファイルを作成します。拡張子はなしです。

「Podfile」を以下のように記述します。platformは「ios」と指定します。Mac OS向けの場合「osx」と指定するとのことです。
OSのバージョンはオプションのようですが指定してみました。ライブラリは「pod 'xxxxx'」と指定します。
[cc lang="teraterm" lines="-1"]
platform :ios, '5.0'
pod 'Nimbus'
[/cc]

Terminalでの階層まで移動して
[cc lang="teraterm" lines="-1"]
pod install
[/cc]
と入力して最後にenter（return）ですね。

今日はここまでです。
