//
//  AppDelegate.swift
//  Be Well App
//
//  Created by Bobby Reay on 9/28/19.
//  Copyright © 2019 Bobby Reay. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Keeps splash screen up for 3 seconds
//        Thread.sleep(forTimeInterval: 3.5)
        // Override point for customization after application launch.
        
        
        
        // Override point for customization after application launch.
        return true
    }
    
    // function to fade in and out text
//    func fadeViewInThenOut(view : UIView, delay: TimeInterval){
//        let animationDuration = 1.0
//        
//        //Fade in the view
//        UIView.animate(withDuration: animationDuration, delay: delay, options: .curveEaseInOut, animations: { view.alpha = 0
//    },
//    completion: nil)
//    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

