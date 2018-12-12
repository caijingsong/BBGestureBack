//  希望您的举手之劳，能为我点颗赞，谢谢~
//  I hope you can star for me. Thank you.
//  代码地址: https://github.com/Bonway/BBGestureBack
//  BBGestureBack
//  Created by Bonway on 2016/3/17.
//  Copyright © 2016年 Bonway. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        let sysBtn = UIButton()
        self.view.addSubview(sysBtn)
        sysBtn.backgroundColor = UIColor.blue
        sysBtn.frame = CGRect(x: 100, y: 100, width: 110, height: 100)
        sysBtn.setTitle("sysPush", for: UIControlState.normal)
        sysBtn.addTarget(self, action: #selector(sysPushClick), for: UIControlEvents.touchUpInside)
    }

    
    @objc func sysPushClick() {
        
        let vc = ViewController()
        vc.hidesBottomBarWhenPushed = true
        vc.view.backgroundColor = UIColor.red
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

