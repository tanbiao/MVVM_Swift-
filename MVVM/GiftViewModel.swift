//
//  GiftViewModel.swift
//  MVVM
//
//  Created by 西乡流水 on 17/4/20.
//  Copyright © 2017年 西乡流水. All rights reserved.
//

import UIKit
import Alamofire

class GiftViewModel: NSObject,Requstable
{
    /*重写协议的属性并且赋值*/
    var URLString: String = ""
    var type: HTTPMethod = .get
    var parameters: [String : Any] = [:]
    typealias ResultData = [giftModel]
    var data: ResultData  = []
}


extension GiftViewModel {

    /*数据解析,重写协议的方法*/
    // 执行了这个方法后,data 就有数据了
    func parseResult(_ result: Any) {
        
        //拿到数据给Data赋值
       self.data = [giftModel]()
    }
    
    
}
