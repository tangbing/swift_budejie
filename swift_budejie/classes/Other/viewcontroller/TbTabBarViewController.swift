//
//  TbTabBarViewController.swift
//  swift_budejie
//
//  Created by mac on 2017/6/22.
//  Copyright © 2017年 macTb. All rights reserved.
//

import UIKit

class TbTabBarViewController: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.setValue(TbCustomTabBar(), forKeyPath: "tabBar")
        let bar = TbCustomTabBar.init(frame: self.view.frame);
        self.setValue(bar, forKey: "tabBar")
        
    }
    
  
    
  
}
