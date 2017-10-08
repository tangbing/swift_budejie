
//
//  TbNavViewController.swift
//  swift_budejie
//
//  Created by mac on 2017/6/22.
//  Copyright © 2017年 macTb. All rights reserved.
//

import UIKit

class TbNavViewController: UINavigationController {

//    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//       
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let bar = UINavigationBar.appearance()
        bar.setBackgroundImage(UIImage.init(named: "navigationbarBackgroundWhite"), for: .default)
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if self.childViewControllers.count > 0 {
            let button = UIButton(type: .custom)
            button.setTitle("返回", for: .normal)
            button.setImage(UIImage(named: "navigationButtonReturn"), for: .normal)
            button.setImage(UIImage(named: "navigationButtonReturnClick"), for: .highlighted)
            button.frame.size = CGSize(width: 70, height: 30)
            button.contentHorizontalAlignment = .left
            button.contentEdgeInsets = UIEdgeInsets(top: 0, left: -10, bottom: 0, right: 0)
            button.setTitleColor(UIColor.black, for: .normal)
            button.setTitleColor(UIColor.red, for: .highlighted)
            button.addTarget(self, action: #selector(backBtnClick), for:.touchUpInside)
            
            // 修改导航栏左边的item
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: button)
            
            // 隐藏tabbar
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    func backBtnClick() {
        self.popViewController(animated: true)
    }
}




