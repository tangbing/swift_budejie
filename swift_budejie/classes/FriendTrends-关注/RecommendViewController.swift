<<<<<<< HEAD
=======

>>>>>>> 99d2ebf9494102f0c4025401f842892a24581781
//
//  RecommendViewController.swift
//  swift_budejie
//
<<<<<<< HEAD
//  Created by mac on 2017/7/13.
=======
//  Created by mac on 2017/9/19.
>>>>>>> 99d2ebf9494102f0c4025401f842892a24581781
//  Copyright © 2017年 macTb. All rights reserved.
//

import UIKit
<<<<<<< HEAD

import Alamofire
import SwiftyJSON
=======
import SVProgressHUD
import MJExtension
>>>>>>> 99d2ebf9494102f0c4025401f842892a24581781


class RecommendViewController: UIViewController {

<<<<<<< HEAD
    @IBOutlet weak var categoryTableView: UITableView!
    @IBOutlet weak var userTableView: UITableView!
    
    //let tagModl : tagModel? = nil;
    //let lists : Array<>
    //var emptyArray2:Array<Int> = []
    
=======
    // MARK - 数组

>>>>>>> 99d2ebf9494102f0c4025401f842892a24581781
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "推荐关注"
        loadCategories()
<<<<<<< HEAD
        
=======
>>>>>>> 99d2ebf9494102f0c4025401f842892a24581781
    }
    
    func loadCategories() {
        SVProgressHUD.show()
        SVProgressHUD.setDefaultStyle(.dark)
        
        let parame :[String : String] = ["a" : "category","c" : "subscribe"]
        let urlString = "http://api.budejie.com/api/api_open.php"
        
<<<<<<< HEAD
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
=======
        NetworkTools.requestData(.get, URLString: urlString, parameters: parame) { (result) in
            let resultDict = (result as! NSDictionary)
            
             let model = TagModel.mj_objectArray(withKeyValuesArray: resultDict["list"])
            
            print(model)
            
        }
}

>>>>>>> 99d2ebf9494102f0c4025401f842892a24581781
}
