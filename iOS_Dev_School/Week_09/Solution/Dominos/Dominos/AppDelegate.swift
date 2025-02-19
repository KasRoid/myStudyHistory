//
//  AppDelegate.swift
//  Dominos
//
//  Created by Lee on 2020/01/28.
//  Copyright © 2020 Up's. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.backgroundColor = .systemBackground
    window?.rootViewController = MainTabBarController()
    window?.makeKeyAndVisible()
    
    return true
  }
  
}

