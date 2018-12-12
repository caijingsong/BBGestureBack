//
//  BaseViewController.swift
//  BBGestureBack_SysFull_swift
//
//  Created by 蔡景松 on 2018/12/12.
//  Copyright © 2018年 Bonway. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController,UIGestureRecognizerDelegate {
    
    //MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
    }
    
    //MARK: - UIGestureRecognizerDelegate
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        
        guard let count = self.navigationController?.viewControllers.count else { return false }
        return count > 1
    }
    
}



