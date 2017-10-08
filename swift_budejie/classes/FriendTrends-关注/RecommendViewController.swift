//
//  RecommendViewController.swift
//  swift_budejie
//
//  Created by mac on 2017/7/13.
//  Copyright © 2017年 macTb. All rights reserved.
//

import UIKit

import Alamofire
import SwiftyJSON


class RecommendViewController: UIViewController {

    @IBOutlet weak var categoryTableView: UITableView!
    @IBOutlet weak var userTableView: UITableView!
    
    //let tagModl : tagModel? = nil;
    //let lists : Array<>
    //var emptyArray2:Array<Int> = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "推荐关注"
        loadCategories()
        
    }
    
    func loadCategories() {
        SVProgressHUD.show()
        SVProgressHUD.setDefaultStyle(.dark)
        
        let parame :[String : String] = ["a" : "category","c" : "subscribe"]
        let urlString = "http://api.budejie.com/api/api_open.php"
        
        Alamofire.request(urlString, method: .get, parameters: parame).responseJSON { (response) in
            SVProgressHUD.dismiss()
            // 是否请求成功
            if response.result.isSuccess{
                //let utf8Stirng = String(data: response.data!, encoding: .utf8)
                //print("utf8Stirng" + utf8Stirng!)
                let list = JSON(response.data as Any)["list"].rawValue
                print(list)
                
                let listModels = tagModel.mj_objectArray(withKeyValuesArray: list) as Array
                print(listModels)
            
            } else {
                print("alamofire请求加载失败：\(response.error)")
            }
            
        }
    }
}
