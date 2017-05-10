//
//  NetwokeTools.swift
//  MVVM
//
//  Created by 西乡流水 on 17/4/19.
//  Copyright © 2017年 西乡流水. All rights reserved.
//

import UIKit
import Alamofire

class NetwokeTools: NSObject
{
    static let shareInstance = NetwokeTools()
    private override init() {}
  
}

extension NetwokeTools
{
    func requestData( url : String, method : HTTPMethod ,parameters : [String:Any],completion :@escaping (Any)->())
    {
        Alamofire.request(url, method: method, parameters: parameters).responseData { (response) in
            
                guard let json = response.result.value else {
                    
                    print("错误:\(response.result.error)")
                    return
                }
                completion(json)
        }
        
    }

}
