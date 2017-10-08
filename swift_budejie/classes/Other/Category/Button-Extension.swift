
//
//  Button-Extension.swift
//  swift_budejie
//
//  Created by mac on 2017/7/12.
//  Copyright © 2017年 macTb. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    
    convenience init(image : String, hightImage: String, target: Any, action:Selector) {
        let button = UIButton(type: .custom)
        button.setBackgroundImage(UIImage(named: image), for: .normal)
        button.setBackgroundImage(UIImage(named: hightImage), for: .highlighted)
        // 这里要设置currentBackgroundImage，因为button设置了背景图片，没有设置setImage,故currentImage，为空
        button.frame.size = button.currentBackgroundImage!.size
        button.addTarget(target, action: action, for: .touchUpInside)
        self.init(customView: button)
    }
    
}
