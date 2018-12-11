//  希望您的举手之劳，能为我点颗赞，谢谢~
//  代码地址: https://github.com/Bonway/BBGestureBack
//  BBGestureBack
//  Created by Bonway on 2016/3/17.
//  Copyright © 2016年 Bonway. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var gestureBaseView: BBGestureBaseView?
    var tabBarViewController : BBTabBarController?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        
        tabBarViewController = BBTabBarController()
        window?.rootViewController = tabBarViewController
        
        gestureBaseView = BBGestureBaseView.init(frame: CGRect(x: 0, y: 0, width: (window?.frame.size.width)!, height: (window?.frame.size.height)!))
        window?.insertSubview(gestureBaseView!, at: 0)
        gestureBaseView?.isHidden = true;
        
        window?.makeKeyAndVisible()
        
        return true
    }
 

}

