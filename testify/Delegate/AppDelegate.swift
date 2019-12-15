//
//  AppDelegate.swift
//  testify
//
//  Created by Beatriz Teles Castro on 09/12/19.
//  Copyright © 2019 Beatriz Teles Castro. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc : UIViewController = IntroViewController()
        let navController = UINavigationController(rootViewController: vc)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        
        return true
    }
   
}

