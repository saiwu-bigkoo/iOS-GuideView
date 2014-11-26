//
//  AppDelegate.swift
//  Advertisement
//
//  Created by Sai on 24/11/14.
//  Copyright (c) 2014年 Sai. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        var mGuideImages:Array<NSString>=[]
        mGuideImages.append("bg_guide_0")
        mGuideImages.append("bg_guide_1")
        mGuideImages.append("bg_guide_2")
        mGuideImages.append("bg_guide_3")
        mGuideImages.append("bg_guide_4")
        mGuideImages.append("bg_guide_5")
        
        let btnWidth:CGFloat = 250.0
        let btnHeight:CGFloat = 100.0
        let btnX:CGFloat = (UIScreen.mainScreen().bounds.width - btnWidth)/2
        let btnY:CGFloat = UIScreen.mainScreen().bounds.height - btnHeight - 50
        var btnSubmit = UIButton(frame:CGRect(origin: CGPointMake(btnX, btnY), size:CGSizeMake(btnWidth,btnHeight)))
        btnSubmit.setTitle("开启", forState: UIControlState.Normal)
        btnSubmit.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        btnSubmit.setTitleColor(UIColor.greenColor(), forState: UIControlState.Highlighted)
        btnSubmit.addTarget(self, action: "onClick", forControlEvents: UIControlEvents.TouchUpInside)
        
        let guidePageController: GuidePageController = GuidePageController(datas:mGuideImages,button:btnSubmit)
        self.window!.rootViewController = guidePageController
        
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        return true
        
    }
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    func onClick(){
        println("打开主界面。。。。。。")
    }
    
}

