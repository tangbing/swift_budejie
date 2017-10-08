//
//  RecomendTagViewController.swift
//  swift_budejie
//
//  Created by mac on 2017/7/31.
//  Copyright © 2017年 macTb. All rights reserved.
//

import UIKit

class RecomendTagViewController: UITableViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "推荐标签"
        setupRecomendTagData();
    }
    
    func setupRecomendTagData() {
        let params: [String : String] = ["a" : "tag_recommend", "action" : "sub" , "c" : "topic"]
        
       // NetworkTools.requestData(.post, URLString: "http://api.budejie.com/api///api_open.php", parameters: params, finishedCallback: (Any) ->Void in{
            
           // })
        
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        return cell
    }
}
