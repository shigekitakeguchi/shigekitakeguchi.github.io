---
title: Storyboardを使用しないSwiftでアプリを準備する。
date: 2015-03-10 01:52:18
tags: 
 - アプリエンジニア
---

ObjCで作っていたiOSアプリをSwiftで作り直そうとしたらXcode 6からEmpty Applicationのテンプレートがなくなっていた。
なのでSingle View ApplicationのテンプレートをベースにStoryboardを使用しないアプリを作っていく。

<!-- more -->

<a href="https://www.flickr.com/photos/shigeki_takeguchi/16092695304" title="スクリーンショット 2015-03-04 23.54.36 by shigeki takeguchi, on Flickr"><img src="https://farm9.staticflickr.com/8674/16092695304_1d75be976e_z.jpg" width="640" height="453" alt="スクリーンショット 2015-03-04 23.54.36"></a>

「Create a new Xcode project」を選び、テンプレートを選択する画面で「iOS」→「Application」で「Single View Application」を選ぶ。

<a href="https://www.flickr.com/photos/shigeki_takeguchi/16528887759" title="スクリーンショット 2015-03-04 23.54.49 by shigeki takeguchi, on Flickr"><img src="https://farm9.staticflickr.com/8562/16528887759_4d28634277_z.jpg" width="640" height="453" alt="スクリーンショット 2015-03-04 23.54.49"></a>

Product Nameは任意の名前を入力し、Languageは「Swift」を選び、次の画面で保存先を選んで保存。

<a href="https://www.flickr.com/photos/shigeki_takeguchi/16715016725" title="スクリーンショット 2015-03-04 23.55.23 by shigeki takeguchi, on Flickr"><img src="https://farm9.staticflickr.com/8681/16715016725_f202c3448f_z.jpg" width="640" height="453" alt="スクリーンショット 2015-03-04 23.55.23"></a>

Project、General画面でMain Interfaceの値から「Main」を消す。これはMain.storyboardを起動時に読み込まないようにしている。

<a href="https://www.flickr.com/photos/shigeki_takeguchi/16507727767" title="スクリーンショット 2015-03-04 23.55.58 by shigeki takeguchi, on Flickr"><img src="https://farm9.staticflickr.com/8574/16507727767_f62c40a66e_z.jpg" width="640" height="453" alt="スクリーンショット 2015-03-04 23.55.58"></a>

不要になったMain.storyboardを削除する。参照だけではなくゴミ箱へ移動させてしまう。

<a href="https://www.flickr.com/photos/shigeki_takeguchi/16715011135" title="スクリーンショット 2015-03-04 23.56.42 by shigeki takeguchi, on Flickr"><img src="https://farm9.staticflickr.com/8670/16715011135_8064fce2c7_z.jpg" width="640" height="453" alt="スクリーンショット 2015-03-04 23.56.42"></a>

以前のXcodeであったEmpty Applicationから作成したアプリのようになる。

ViewController.swiftを追加。またUINavigationControllerのrootViewControllerにViewControllerを追加した方がナビゲーションバーやステータスバー、遷移など後々やりやすくなるのでその記述もする。


```swift
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  var navigationController: UINavigationController?

  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) ->; Bool {
    window = UIWindow(frame: UIScreen.mainScreen().bounds)
    window!.makeKeyAndVisible()
    var viewController: ViewController? = ViewController()
    navigationController = UINavigationController(rootViewController: viewController!)
    window!.rootViewController = navigationController
    return true
  }

  func applicationWillResignActive(application: UIApplication) {
  }

  func applicationDidEnterBackground(application: UIApplication) {
  }

  func applicationWillEnterForeground(application: UIApplication) {
  }

  func applicationDidBecomeActive(application: UIApplication) {
  }

  func applicationWillTerminate(application: UIApplication) {
  }
}
```

Objective-Cの時にはこんな記述だった。
AppDelegate.h

```objc
#import &lt;UIKit/UIKit.h&gt;

@class RootViewController;

@interface AppDelegate : UIResponder
<UIApplicationDelegate>

@property( strong, nonatomic )UIWindow *window;
@property( strong, nonatomic )RootViewController *viewController;

@end
```

AppDelegate.m

```objc
#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  self.viewController = [[ViewController alloc] init];
  UINavigationController *naviController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
  self.window.rootViewController = naviController;
  [self.window makeKeyAndVisible];
  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

@end
```
