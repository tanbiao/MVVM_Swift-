//
//  ViewController.swift
//  MVVM
//
//  Created by 西乡流水 on 17/4/19.
//  Copyright © 2017年 西乡流水. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
     lazy var giftVM = GiftViewModel()


    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let parameters = ["type" : 0, "page":1,"row":150]
//        NetwokeTools.shareInstance.requestData(url: "http://qf.56.com/pay/v4/giftList.ios", method: .get, parameters: parameters) { (response) in
//            
//             print("json ====\(response)")
//            
//        }
        
        
        giftVM.requestData {
            
            //数据解析成功之后,就会来到这个回调
            print(self.giftVM.data)
        }
        
        
        test()
        
    }
    
    @discardableResult
    func test() -> Int {
        return 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

