
//
//  NewViewController.swift
//  swift_budejie
//
//  Created by mac on 2017/6/22.
//  Copyright © 2017年 macTb. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        setupNav()
    }

    func setupNav() -> Void {
        // IImageView(image:UIImage(named: "MainTitle"))会自动加载图片的原始大小
        self.navigationItem.titleView = UIImageView(image:UIImage(named: "MainTitle"))
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: "MainTagSubIcon", hightImage: "MainTagSubIconClick", target: self, action: #selector(tagClick))
        
        self.view.backgroundColor = RgbGlobalBg
        
        
    }
    
    func tagClick() -> Void {
        print("tagClick")
    }
    
}
