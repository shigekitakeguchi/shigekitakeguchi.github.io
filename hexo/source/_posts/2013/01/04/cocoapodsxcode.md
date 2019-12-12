---
title: CocoaPodsを使ったXcodeプロジェクトの作り方（３）
date: 2013-01-04
tags: 
 - about-programing
 - cocoa-touch
 - ios-app
 - objective-c
 - xcode
---

３回目ですね。前回からの続きです。<br>
アプリの方のプロジェクトを開いていき「Frameworks」内に「libPods.a」という静的ライブラリが赤字で表示されています。<br>
赤字になっているということは参照として定義されてるけどファイルが「ない」ということです。

<!-- more -->

<p><img src="https://farm9.staticflickr.com/8213/8340695197_94a186e587_o.png" alt="" /></p>

今回はこの「libPods.a」という静的ライブラリのファイルをビルドして作ります。

<p><img src="https://farm9.staticflickr.com/8500/8349673938_2d232b3862.jpg" alt="" /></p>

Xcodeの「Preferences...」を開きます（メニューバーの「Xcode」からいけます）。

<p><img src="https://farm9.staticflickr.com/8215/8340721573_29256da6ce.jpg" alt="" /></p>

次にツールバーの「Locations」を選択します。
「Derived Data」の項目にある「Advanced...」をクリックします。すると「Build Location」の設定画面がでてきます。

<p><img src="https://farm9.staticflickr.com/8083/8340721497_5ee51058c1.jpg" alt="" /></p>

「Custom」を選択し、さらにプルダウンメニューから「Relative to Workspace」を選択します。すると
「Products」は「Build/Products」となり「Intermediates」は「Build/Intermediates」となります。
最後に「Done」をクリックして設定をします。
「Preferences...」ウィンドウを閉じます。これで設定ができましたのでビルドするだけになりました。

長くなってしまってますが今回はここまでです。
