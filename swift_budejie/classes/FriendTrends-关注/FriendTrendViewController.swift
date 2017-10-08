
//
//  FriendTrendViewController.swift
//  swift_budejie
//
//  Created by mac on 2017/6/22.
//  Copyright © 2017年 macTb. All rights reserved.
//

import UIKit

class FriendTrendViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNav()
    }
    
    func setupNav() -> Void {
        self.navigationItem.title = "我的关注"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: "friendsRecommentIcon", hightImage: "friendsRecommentIcon-click", target:self, action:#selector(friendsClick))
    }
    
    func friendsClick() -> Void {
        let recommendVc = RecommendViewController()
        print(self.navigationController!)
        self.navigationController?.pushViewController(recommendVc, animated: true)
    }

    
}
