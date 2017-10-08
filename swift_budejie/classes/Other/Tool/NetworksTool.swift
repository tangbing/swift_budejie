
//
//  NetworksTool.swift
//  swift_budejie
//
//  Created by mac on 2017/7/13.
//  Copyright © 2017年 macTb. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

enum MethodType{
    case get
    case post
}

class NetworkTools {
    class func requestData(_ type : MethodType, URLString : String, parameters : [String : Any]? = nil, finishedCallback :  @escaping (_ result : Any) -> ()) {
        
        // 1.获取类型
        let method = type == .get ? HTTPMethod.get : HTTPMethod.post
        
        // 2.发送网络请求
        Alamofire.request(URLString, method: method, parameters: parameters).responseJSON { (response) in
            
            // 3.获取结果
            // guard 如果条件不符合，执行else后的语句块
            guard let result = response.result.value else {
                print(response.result.error!)
                return
            }
            let swiftJson = JSON(result)
            // 4.将结果回调出去
            finishedCallback(swiftJson)
        }
    }
}

