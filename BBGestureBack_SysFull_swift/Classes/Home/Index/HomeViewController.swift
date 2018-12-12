//
//  HomeViewController.swift
//  BBGestureBack_SysFull_swift
//
//  Created by Bonway on 2018/5/29.
//  Copyright © 2018年 Bonway. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //iOS12.1 UINavigationController + UITabBarController（ UITabBar 磨砂），在 系统的 popViewControllerAnimated 会遇到tabbar布局错乱的问题，所以需添加以下方法。
        //当然你也可以自己选择添加到底层的navigationController中，进行处理。
        UITabBar.appearance().isTranslucent = false
        //---------------------------------------
        
        view.backgroundColor = UIColor.white
        
        let sysBtn = UIButton()
        sysBtn.backgroundColor = UIColor.blue
        sysBtn.frame = CGRect(x: 100, y: 100, width: 110, height: 100)
        sysBtn.setTitle("sysPush", for: UIControlState.normal)
        sysBtn.addTarget(self, action: #selector(sysPushClick), for: UIControlEvents.touchUpInside)
        
        self.view.addSubview(sysBtn)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        var animatedd = animated
        if let count = self.navigationController?.childViewControllers.count {
            animatedd = count > 1
        }
        self.navigationController?.setNavigationBarHidden(true, animated: animatedd)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @objc func sysPushClick() {
        
        let vc = ViewController()
        vc.hidesBottomBarWhenPushed = true 
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
