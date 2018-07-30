---
title: デザイナー・ノンプログラマーのためのXcode入門。（１）準備編
date: 2012-11-11 13:52:48
tags: 
 - cocoa-touch
 - ios-app
 - objective-c
 - xcode
---

今、iPhoneアプリのデザインをXibというXML形式のファイルに変換する仕事をしています。<br>
iPhoneやiPadアプリのデザインを開発会社にどんな形式で納品すればいいのかって確かに問題になるんでしょう。<br>
PSDで渡せばいいってことだといいんだろうけどXibかStorybordでください！なんて言われたらデザイナー困りますよね。<br>
どうやって、そのXibってのを作ればいいのってなりますよね？<br>
そのためのノンプログラマーのためのXcode入門です。

XibやStorybordを作るにはXcodeというのが必要です。<br>
Xcodeって聞いたことあります？

<img src="/images/2012/11/new_single_window20110711-e1352641275301.jpeg" alt="" title="Xcode window" width="498" height="331" class="alignnone size-full wp-image-814">

スクリーンショットはこんな感じです。<br>
iOSやMac OS Xのアプリを作るためのソフトウェアです。<br>
残念ながら日本語化はされてません。

無料で入手できます。

iOSアプリを公開してみんなに使ってもらおうと思ったらiOSデベロッパプログラムに登録する必要がありますがXibやStorybordを作るのだけなら費用はかかりません。

最新版はXcode 4.5.2（2012年11月11日時点）となっています。<br>
<a href="https://developer.apple.com/jp/technologies/tools/">https://developer.apple.com/jp/technologies/tools/</a>

App Storeからインストールできます。<br>
<a href="https://itunes.apple.com/jp/app/xcode/id497799835?mt=12">https://itunes.apple.com/jp/app/xcode/id497799835?mt=12</a>

Xcodeをインストールするには条件があります。<br>
まずOS X 10.7.4以上（2012年11月11日時点）が必要です。LionかMountain Lionですね。<br>
そうじゃない場合はOS Xをアップグレードしましょう。<br>
モデルによってMountain Lionをインストールできるかどうかは以下を参考にしてくださいね。<br>
<a href="https://www.apple.com/jp/osx/specs/">https://www.apple.com/jp/osx/specs/</a>

あとWindowsでは提供されていません。きっと提供されることもないでしょうね。。。

インストール後、起動してみてください。<br>
アプリケーションフォルダの中にXcodeがあると思います。

<img src="/images/2012/11/new_hero20110308.jpeg" alt="" title="Xcode icon" width="239" height="216" class="alignnone size-full wp-image-815" />

こんなアイコンのあると思います。

これでひとまずはいつでもXibが作れるようになるわけです。

その前にXibとはなんぞや？と思いますよね。<br>
レイアウトや各パーツの属性を定義しているファイルくらいに考えればよいかと思います。<br>
何年か前まではXibではなくNibと呼ばれていました。今でもNibというのはあるらしくXibは最終的にはNibに変換されてるらしいです。で、そのNibは何の略かといいますと「NeXT Interface Builder」の略です。

<img src="/images/2012/11/20061029-logo-next.jpeg" alt="" title="NeXT Logo" width="250" height="250" class="alignnone size-full wp-image-829" />

スティーブ・ジョブスの作った会社のひとつですね、NeXTは。<br>
iOSの開発をしてると時々NeXT時代からの名残りに出くわしてちょっと驚きます。<br>
なんせWikipediaを見るとInterface Builderの元となるものソフトウェア1988年に作られたってなってますからね。

ところでアプリの画面デザインはどうしてます？<br>
まだまだアプリの画面デザイン本って少ないように思ってますがどうなんでしょうね。<br>
そこで困ってるという人はあまりいないんですかね？<br>
そのうち専門誌もでるかもしれないですね。

デザイナーの人と話してるとひょっとして読んでないじゃないのって気がするのが「iOS ヒューマンインターフェイス ガイドライン」です。<br>
必ず読んだほうがいいと思います。企画する人も読んだ方がいいです。<br>
<a href="https://developer.apple.com/jp/devcenter/ios/library/documentation/MobileHIG.pdf">https://developer.apple.com/jp/devcenter/ios/library/documentation/MobileHIG.pdf</a>

各アプリに関わる人が読んだ方がよいガイドラインもありますので参考までに。<br>
<a href="https://developer.apple.com/jp/devcenter/ios/library/japanese.html">https://developer.apple.com/jp/devcenter/ios/library/japanese.html</a>

次は、Xibに入る前にデザイナーが用意しないといけない素材とかをまとめてみます。