//
//  TbCustomTabBar.swift
//  swift_budejie
//
//  Created by mac on 2017/7/6.
//  Copyright © 2017年 macTb. All rights reserved.
//

import UIKit

class TbCustomTabBar: UITabBar {
    
    lazy private var publishButton: UIButton = UIButton(type: .custom)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // 设置tabar的背景图片
        self.backgroundImage = UIImage(named: "tabbar-light")
        
        //添加发布按钮
        publishButton.setBackgroundImage(UIImage(named: "tabBar_publish_icon"), for:.normal)
        publishButton.setBackgroundImage(UIImage(named: "tabBar_publish_click_icon"), for: .highlighted)
        publishButton.frame.size = CGSize(width: 49, height: 49)
        publishButton.addTarget(self, action:#selector(publishClick), for: .touchUpInside)
        self.addSubview(publishButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func publishClick() -> Void {
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        // 设置发布按钮的frame
        let width : Double =  Double(self.frame.size.width)
        let height : Double = Double(self.frame.size.height)
        
        self.publishButton.center = CGPoint(x: width * 0.5, y: height * 0.5)
        
        // 设置其他UITabBarButton的frame
        let buttonY : Double = 0
        let buttonW : Double = width/5
        let buttonH : Double = height
        var buttonX : Double = 0.0
        var index : Int = 0
        
        
        for button in self.subviews {
            if !(button is UIControl) || button == publishButton
            {
                continue
            }
            if index > 1 {
                 buttonX = Double(index + 1) * buttonW
            } else {
                 buttonX = Double(index) * buttonW
            }
           
            button.frame = CGRect(x: buttonX, y: buttonY, width: buttonW, height: buttonH)
            
            index += 1
        }
   }
}
