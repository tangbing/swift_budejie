//
//  MeViewController.swift
//  swift_budejie
//
//  Created by mac on 2017/6/22.
//  Copyright © 2017年 macTb. All rights reserved.
//

import UIKit

class MeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNav()
       
    }
    
    func setupNav() -> Void {
        
    let settingItem : UIBarButtonItem = UIBarButtonItem(image: "mine-setting-icon", hightImage: "mine-setting-icon-click", target: self, action: #selector(SettingClick))
    let moonItem : UIBarButtonItem = UIBarButtonItem(image: "mine-moon-icon", hightImage: "mine-moon-icon-click", target: self, action: #selector(moonClick))
    self.navigationItem.rightBarButtonItems = [settingItem, moonItem]
        
    }
    
    func SettingClick() -> Void {
        print("SettingClick")
    }

    func moonClick() -> Void {
        print("moonClick")
    }


}
