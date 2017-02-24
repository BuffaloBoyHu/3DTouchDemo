//
//  AppDelegate.swift
//  3DTouchDemo
//
//  Created by HLH on 2017/2/24.
//  Copyright © 2017年 胡良海. All rights reserved.
//

import UIKit
import FLEX

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // flex调试工具
        FLEXManager.shared().showExplorer()
        // 3DTouch 应用图标快捷方式
        let firstShortItem = UIApplicationShortcutItem.init(type: "Search", localizedTitle: "搜索", localizedSubtitle: "应用内搜索", icon: UIApplicationShortcutIcon.init(type: .search), userInfo: nil)
        let secondShortItem = UIApplicationShortcutItem.init(type: "Add", localizedTitle: "添加", localizedSubtitle: "应用内添加", icon: UIApplicationShortcutIcon.init(type: .add), userInfo: nil)
        let thirdShortItem = UIApplicationShortcutItem.init(type: "third", localizedTitle: "third", localizedSubtitle: "the third subtitle", icon: UIApplicationShortcutIcon.init(type: .alarm), userInfo: nil)
        let fourShortItem = UIApplicationShortcutItem.init(type: "four", localizedTitle: "four", localizedSubtitle: "the four subtitle", icon: UIApplicationShortcutIcon.init(type: .audio), userInfo: nil)
        UIApplication.shared.shortcutItems = [firstShortItem,secondShortItem,thirdShortItem,fourShortItem]
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    //MARK: 3DTouch appshortitem 点击处理
    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        switch shortcutItem.type {
        case "Search": break
        case "Add" : break
        case "third": break
        case "four": break;
        default:
            break
        }
    }

}

