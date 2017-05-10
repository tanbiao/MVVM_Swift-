//
//  Requstable.swift
//  MVVM
//
//  Created by 西乡流水 on 17/4/20.
//  Copyright © 2017年 西乡流水. All rights reserved.
//

import UIKit
import Alamofire

enum MethodType :String {
    case get = "GET"
    case post = "POST"
}

protocol Requstable
{
    var URLString : String {get}
    var type : HTTPMethod{get}
    var parameters :[String:Any] {get}
    
    associatedtype ResultData
    
    var data :ResultData {set get}
    /*解析数据*/
    func parseResult(_ result :Any)

}

extension Requstable
{
     func requestData(completion :@escaping ()->())
    {
        Alamofire.request(URLString, method: type, parameters: parameters).responseData { (response) in
            
            guard let json = response.result.value else {
                
                print("错误:\(response.result.error)")
                return
            }
            
            self.parseResult(json)
            
            completion()
        }

    }
   
}
